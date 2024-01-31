<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use Illuminate\Http\Request;
use App\Exports\EmployeeExport;
use App\Imports\EmployeeImport;
use App\Models\Religion;
use Barryvdh\DomPDF\Facade\PDF;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Session;

class EmployeeController extends Controller
{
    public function index(Request $request)
    {
        if ($request->has('search')) {
            $data = Employee::where('nama', 'LIKE', '%' . $request->search . '%')->paginate(5);
            Session::put('halaman_url', request()->fullUrl());
        } else {
            $data = Employee::paginate(5);
            Session::put('halaman_url', request()->fullUrl());
        }
        return view('datapegawai', compact('data'));
    }

    public function tambahpegawai()
    {
        $dataagama = Religion::all();
        return view('tambahdata', compact('dataagama'));
    }

    public function insertdata(Request $request)
    {
        $this->validate($request, [
            'nama' => 'required|min:7|max:20',
            'notelpon' => 'required|min:11|max:12',
        ]);
        $data = Employee::create($request->all());
        if ($request->hasFile('foto')) {
            $request->file('foto')->move('fotopegawai/', $request->file('foto')->getClientOriginalName());
            $data->foto = $request->file('foto')->getClientOriginalName();
            $data->save();
        }
        return redirect()->route('pegawai')->with('success', 'Data Berhasil Di Tambahkan');
    }

    public function tampilkandata($id)
    {
        $data = Employee::find($id);
        return view('tampildata', compact('data'));
    }

    public function updatedata(Request $request, $id)
    {
        $data = Employee::find($id);
        $data->update($request->all());

        if (Session('halaman_url')) {
            return Redirect(Session('halaman_url'))->with('success', 'Data Berhasil Di Update');
        }
        return redirect()->route('pegawai')->with('success', 'Data Berhasil Di Update');
    }

    public function delete($id)
    {
        $data = Employee::find($id);
        $data->delete();
        if (Session('halaman_url')) {
            return Redirect(Session('halaman_url'))->with('success', 'Data Berhasil Di Hapus');
        }
        return redirect()->route('pegawai')->with('success', 'Data Berhasil Di Hapus');
    }

    public function exportpdf()
    {
        $data = Employee::all();
        view()->share('data', $data);
        $pdf = PDF::loadView('datapegawai-pdf');
        return $pdf->download('data.pdf');
    }

    public function exportexcel()
    {
        return Excel::download(new EmployeeExport, 'datapegawai.xlsx');
    }

    public function importexcel(Request $request)
    {
        $data = $request->file('file');
        $nama = $data->getClientOriginalName();
        $data->move('EmployeeData', $nama);
        Excel::import(new EmployeeImport, public_path('/EmployeeData/') . $nama);
        return redirect()->back();
    }
}
