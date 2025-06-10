<nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column text-sm" data-widget="treeview" role="menu" data-accordion="false">
        <li class="nav-item">
            <a href="/dokter/home" class="nav-link {{Request::is('dokter/home') ? 'active' : ''}}">
                <i class="nav-icon fas fa-home"></i>
                <p>
                    Beranda
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/dokter/jadwal" class="nav-link {{Request::is('dokter/jadwal') ? 'active' : ''}}">
                <i class="nav-icon fa fa-calendar"></i>
                <p>
                    Jadwal Saya
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/dokter/rekammedis" class="nav-link {{Request::is('dokter/rekammedis') ? 'active' : ''}}">
                <i class="nav-icon fa fa-users"></i>
                <p>
                    Rekam Medis Pasien
                </p>
            </a>
        </li>

        {{-- <li class="nav-item">
            <a href="/dokter/gantipass" class="nav-link {{Request::is('dokter/gantipass') ? 'active' : ''}}">
                <i class="nav-icon fas fa-key"></i>
                <p>
                    Ganti Password
                </p>
            </a>
        </li> --}}
        <li class="nav-item">
            <a href="/logout" class="nav-link">
                <i class="nav-icon fas fa-sign-out-alt"></i>
                <p>
                    Logout
                </p>
            </a>
        </li>
    </ul>
</nav>