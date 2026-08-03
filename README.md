# 🕌 Aplikasi Slip Gaji LPQ Al-Fath Maulana

Aplikasi web lokal untuk membuat, menghitung, menyimpan, menampilkan preview, dan mengekspor slip gaji guru/staff LPQ Al-Fath Maulana.

## 📋 Fitur Utama

- ✅ CRUD Data Guru/Staff dengan status syahadah dan tarif custom
- ✅ Kategori Penghasilan (Kelas Reguler, Dewasa, Tetap, Qty×Tarif, Manual)
- ✅ Kategori Potongan (Absen, Kasbon, Koreksi, Manual)
- ✅ Income Tetap Guru (otomatis muncul setiap bulan)
- ✅ Pembuatan Slip Gaji dengan preview real-time
- ✅ Perhitungan otomatis (honor reguler, kelas dewasa, potongan absen)
- ✅ Nomor slip otomatis format SG-YYMM-KODE-001
- ✅ Sistem revisi slip (REV1, REV2, dst.)
- ✅ Export ke PDF, PNG, dan JPG via Puppeteer
- ✅ Dashboard bulanan dan tahunan
- ✅ Pengaturan lembaga dengan upload logo, tanda tangan, stempel
- ✅ Backup & Restore via file ZIP
- ✅ Database SQLite lokal

## 🚀 Cara Install & Menjalankan

### Prasyarat
- [Node.js](https://nodejs.org) v18 atau lebih baru
- npm (sudah termasuk dengan Node.js)

### 1. Install Dependency

```bash
# Di folder root project
npm install

# Install semua dependency (backend + frontend)
npm run install:all
```

### 2. Menjalankan Aplikasi

```bash
# Jalankan backend dan frontend bersamaan
npm run dev
```

Atau jalankan terpisah:

```bash
# Terminal 1: Backend (port 3001)
cd backend
npm run dev

# Terminal 2: Frontend (port 3000)
cd frontend
npm run dev
```

### 3. Buka Aplikasi

Buka browser dan akses:

```
http://localhost:3000
```

## 📂 Lokasi File Penting

| File/Folder | Keterangan |
|---|---|
| `data/lpq_payroll.sqlite` | Database SQLite |
| `uploads/logos/` | File logo lembaga |
| `uploads/signatures/` | File tanda tangan |
| `uploads/stamps/` | File stempel |
| `backups/` | File backup ZIP |
| `exports/` | File export PDF/PNG/JPG |

## 📝 Cara Membuat Slip Gaji Pertama

1. **Tambah Guru**: Buka menu Guru/Staff → Tambah Guru → Isi data guru
2. **Atur Penghasilan**: (opsional) Tambah income tetap di menu Income Tetap
3. **Buat Slip**: Buka menu Buat Slip → Pilih bulan/tahun → Pilih guru → Tambah item penghasilan → Simpan Draft atau Finalkan

## 📤 Cara Export Slip

1. Buka menu Daftar Slip
2. Klik ikon mata (👁) untuk melihat detail slip
3. Klik tombol **PDF**, **PNG**, atau **JPG** untuk mengunduh
4. Klik **Print** untuk mencetak langsung dari browser

## 💾 Cara Backup & Restore

### Backup
1. Buka menu Backup & Restore
2. Klik **Buat Backup Sekarang**
3. File ZIP tersimpan di folder `backups/`

### Restore
1. Buka menu Backup & Restore
2. Klik **Upload File Backup**
3. Pilih file ZIP backup
4. Sistem akan membuat backup darurat sebelum menimpa data

## 🧮 Rumus Perhitungan

### Honor Kelas Reguler
```
Honor = Jumlah Sesi × Tarif Guru
- Bersyahadah: Rp700.000/sesi
- Non-syahadah: Rp350.000/sesi
```

### Honor Kelas Dewasa
```
Honor = Jumlah Santri × Rp70.000
```

### Potongan Absen
```
Potongan = (Honor Sesi ÷ Jumlah Pertemuan) × Jumlah Absen
```

## 🔧 Tech Stack

- **Frontend**: React, Vite, Tailwind CSS, React Router
- **Backend**: Node.js, Express.js
- **Database**: SQLite (better-sqlite3)
- **Export**: Puppeteer (PDF, PNG, JPG)
- **Backup**: adm-zip

## 📌 Catatan

- Aplikasi ini digunakan secara lokal (tidak perlu internet)
- Database otomatis dibuat saat pertama kali dijalankan
- Semua data tersimpan di folder aplikasi
- Nomor slip yang sudah terpakai tidak akan digunakan ulang

---

**Dikembangkan untuk LPQ Al-Fath Maulana, Baturaja**
