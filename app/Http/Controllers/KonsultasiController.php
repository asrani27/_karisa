<?php

namespace App\Http\Controllers;

use App\Models\Dokter;
use App\Models\Jadwal;
use Illuminate\Http\Request;

class KonsultasiController extends Controller
{
    public function pasien()
    {
        $dokter = Dokter::get();
        return view('pasien.konsultasi.index', compact('dokter'));
    }
    public function jadwal()
    {
        $data = Jadwal::get();
        return view('pasien.jadwal.index', compact('data'));
    }
    public function chat($id)
    {
        $dokter = Dokter::find($id);
        return view('pasien.konsultasi.chat', compact('dokter', 'id'));
    }
}
