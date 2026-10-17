program kasir;

uses crt;

var
  pilihan: integer;
  harga: longint;
  jumlah: integer;
  subtotal: longint;
  total: longint;
  diskon: longint;
  total_bayar: longint;
  bayar: longint;
  kembalian: longint;
  i: integer;
  pecahan: longint;
  jumlah_pecahan: longint;

begin
  { Menu utama }
  repeat
    clrscr;
    textcolor(15);
    gotoxy(1, 1);
    writeln('================================');
    gotoxy(1, 2);
    writeln('     APLIKASI KASIR SEDERHANA');
    gotoxy(1, 3);
    writeln('================================');
    writeln('1. Transaksi Baru');
    writeln('2. Keluar');
    write('Pilih menu [1/2]: ');
    readln(pilihan);

    case pilihan of
      1:
      begin
        { Input barang }
        clrscr;
        textcolor(15);
        writeln('=== TRANSAKSI BARU ===');
        total := 0;

        while true do
        begin
          write('Harga barang (0 untuk selesai): ');
          readln(harga);

          if harga = 0 then
            break;

          if harga < 0 then
          begin
            textcolor(12);
            writeln('Error: harga tidak boleh negatif.');
            textcolor(15);
            continue;
          end;

          write('Jumlah barang: ');
          readln(jumlah);

          if jumlah <= 0 then
          begin
            textcolor(12);
            writeln('Error: jumlah harus lebih dari 0.');
            textcolor(15);
            continue;
          end;

          subtotal := harga * jumlah;
          total := total + subtotal;
          textcolor(10);
          writeln('Subtotal: ', subtotal);
          textcolor(15);
        end;

        { Diskon bertingkat }
        if total >= 500000 then
        begin
          diskon := total * 10 div 100;
          textcolor(10);
          writeln('Diskon 10%: ', diskon);
        end
        else if total >= 100000 then
        begin
          diskon := total * 5 div 100;
          textcolor(10);
          writeln('Diskon 5%: ', diskon);
        end
        else
        begin
          diskon := 0;
          writeln('Diskon: 0');
        end;

        textcolor(15);
        total_bayar := total - diskon;
        writeln('Total sebelum diskon: ', total);
        writeln('Total bayar: ', total_bayar);

        { Pembayaran }
        repeat
          write('Uang bayar: ');
          readln(bayar);

          if bayar < total_bayar then
          begin
            textcolor(12);
            writeln('Error: uang bayar kurang dari total bayar.');
            textcolor(15);
          end;
        until bayar >= total_bayar;

        kembalian := bayar - total_bayar;
        textcolor(10);
        writeln('Kembalian: ', kembalian);
        textcolor(15);

        { Struk }
        writeln('------------------------');
        writeln('STRUK PEMBAYARAN');
        writeln('------------------------');
        writeln('Total':20, total:10);
        writeln('Diskon':20, diskon:10);
        writeln('Total Bayar':20, total_bayar:10);
        writeln('Bayar':20, bayar:10);
        writeln('Kembalian':20, kembalian:10);
        writeln('------------------------');
        writeln('Pecahan kembalian:');

        if kembalian = 0 then
          writeln('Tidak ada kembalian.')
        else
        begin
          { Pecahan uang dengan for-to-do }
          for i := 1 to 9 do
          begin
            case i of
              1: pecahan := 100000;
              2: pecahan := 50000;
              3: pecahan := 20000;
              4: pecahan := 10000;
              5: pecahan := 5000;
              6: pecahan := 2000;
              7: pecahan := 1000;
              8: pecahan := 500;
              9: pecahan := 100;
            else
              pecahan := 0;
            end;

            jumlah_pecahan := kembalian div pecahan;
            if jumlah_pecahan > 0 then
            begin
              writeln('Rp', pecahan:6, ' x ', jumlah_pecahan);
              kembalian := kembalian mod pecahan;
            end;
          end;
        end;

        writeln('------------------------');
        textcolor(10);
        writeln('Transaksi selesai. Tekan Enter...');
        textcolor(15);
        readln;
      end;
      2:
      begin
        clrscr;
        textcolor(10);
        writeln('Terima kasih. Program selesai.');
        textcolor(15);
      end;
      else
      begin
        textcolor(12);
        writeln('Pilihan tidak valid.');
        textcolor(15);
        writeln('Tekan Enter...');
        readln;
      end;
    end;
  until pilihan = 2;
end.
