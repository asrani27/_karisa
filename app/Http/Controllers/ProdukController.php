<?php

namespace App\Http\Controllers;

use App\Models\Toko;
use App\Models\Produk;
use App\Models\Kategori;
use App\Models\Stok;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Image;

class ProdukController extends Controller
{
    public function index()
    {
        $data = Stok::orderBy('id', 'DESC')->paginate(10);
        return view('superadmin.produk.index', compact('data'));
    }

    public function create()
    {
        $kategori = Kategori::get();
        return view('superadmin.produk.create', compact('kategori'));
    }

    public function store(Request $request)
    {
        // $validator = Validator::make($request->all(), [
        //     'foto'  => 'mimes:jpg,png,jpeg,bmp|max:10240',
        // ]);

        // if ($validator->fails()) {
        //     $request->flash();
        //     toastr()->error('File harus Gambar dan Maks 10MB');
        //     return back();
        // }

        if ($request->foto == null) {
            $filename = null;
        } else {
            $extension = $request->foto->getClientOriginalExtension();
            $filename = uniqid() . '.' . $extension;
            $request->foto->storeAs('/public/' . $request->toko_id, $filename);
        }


        $attr = $request->all();
        $attr['foto'] = $filename;
        //dd($attr);
        Stok::create($attr);

        toastr()->success('Sukses Di Simpan');
        return redirect('/superadmin/produk');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $data = Stok::find($id);

        $kategori = Kategori::get();
        return view('superadmin.produk.edit', compact('data', 'kategori'));
    }

    public function update(Request $request, $id)
    {
        // $validator = Validator::make($request->all(), [
        //     'foto'  => 'mimes:jpg,png,jpeg,bmp|max:10240',
        // ]);

        // if ($validator->fails()) {
        //     $request->flash();
        //     toastr()->error('File harus Gambar dan Maks 10MB');
        //     return back();
        // }

        if ($request->foto == null) {
            $filename = Stok::find($id)->foto;
        } else {
            $extension = $request->foto->getClientOriginalExtension();
            $filename = uniqid() . '.' . $extension;

            $request->foto->storeAs('/public/' . $request->toko_id, $filename);

            $image = $request->file('foto');
            $input['imagename'] = time() . '.' . $image->extension();

            $filePath = public_path('storage');
            //dd($filePath);
            $img = Image::make($image->path());
            $img->resize(1000, 1000, function ($const) {
                $const->aspectRatio();
            })->save($filePath . '/' . $filename);

            $filePath = public_path('/images');
        }

        $attr = $request->all();
        $attr['foto'] = $filename;

        Stok::find($id)->update($attr);

        toastr()->success('Sukses Di Update');
        return redirect('/superadmin/produk');
    }

    public function destroy($id)
    {
        Stok::find($id)->delete();
        toastr()->success('Sukses Di Hapus');
        return back();
    }
}
