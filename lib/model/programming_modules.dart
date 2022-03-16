class ProgrammingModules{
  String materi, estimasi, silabus, desc, image, android, ios, desktop, multiplatform;
  var gallery = [];

  ProgrammingModules({
    required this.materi,
    required this.estimasi,
    required this.silabus,
    required this.desc,
    required this.image,
    required this.android,
    required this.desktop,
    required this.ios,
    required this.multiplatform,
    required this.gallery
  });
}

var data = [
  ProgrammingModules(
    materi: "Memulai Pemrograman Dengan Python", 
    estimasi: "30 hari",
    desc: """Python adalah bahasa pemrograman interpretatif yang dapat digunakan di berbagai platform dengan filosofi perancangan yang berfokus pada tingkat keterbacaan kode dan merupakan salah satu bahasa populer yang berkaitan dengan Data Science, Machine Learning, dan Internet of Things (IoT). Keunggulan Python yang bersifat interpretatif juga banyak digunakan untuk prototyping, scripting dalam pengelolaan infrastruktur, hingga pembuatan website berskala besar.
Bahasa Python menjadi keharusan untuk Anda yang ingin mempelajari dasar-dasar scripting dan pengolahan data atau machine learning.
Bahasa Python digunakan secara luas, masuk dalam 3 besar bahasa pemrograman yang digunakan dalam beberapa tahun belakangan.
Pustaka (Library) yang luas, memungkinkan Anda mengembangkan ke bidang-bidang lainnya. Beberapa library atau framework terpopuler data science dan machine learning menggunakan Python antara lain: Scikit-Learn, TensorFlow, PyTorch.
Bahasa Python memiliki kurva pembelajaran (learning-curve) yang sangat landai, cocok untuk dipelajari sebagai bahasa pemrograman pertama - dengan kemudahan pembacaan dan kemudahan mempelajari sintaksisnya.
""", 
    silabus: """Pendahuluan : Pengenalan mengenai bahasa Python dan cara instalasi-nya. (2 jam 30 menit)
Dasar Python : Menjelaskan mode operasi dan style guide penulisan pada Python. (1 jam 50 menit)
Tipe Data pada Python : Menjelaskan tipe data pada Python, seperti Number, String, List, dan Set. (1 jam 30 menit)
Input/Output dan Operasi pada Python : Menjelaskan mekanisme input/output pada Python, dan juga operasi pada Python seperti operasi pada list, manipulasi string, operator, operands, dan expression. (3 jam)
Style Guide pada Python : Menjelaskan style guide pada Python, PEP8, formatting kode, statement gabungan, dan prinsip penamaan. (1 jam 50 menit)
Control Flow : Menjelaskan flow control pada Python, percabangan dan perulangan. (2 jam)
Penanganan Kesalahan : Menjelaskan cara menangani kesalahan ketika terjadi kesalahan syntax atau pengecualian di Python. (1 jam 10 menit)
Fungsi dan Method : Menjelaskan fungsi dan method pada Python, argument, dan parameter. (1 jam 50 menit)
Pemrograman Berorientasi Objek : Menjelaskan pemrograman berorientasi objek pada Python seperti object, class, method, inheritance, dan implementation. (1 jam 30 menit)
Unit Testing : Memahami teknik pengujian program secara otomatis pada Python dengan unit testing beserta contoh implementasinya. (50 menit)
Library Populer : Mempelajari beberapa library populer pada Python seperti String, OS, Pickle, JSON, Scrapper, Regex, dan Argument Parser. (30 menit)""", 
    image: "https://res.cloudinary.com/bekhan/image/upload/v1647404428/lomba/memulai_pemrograman_dengan_python_logo_230421132353_mxdc0p.jpg", 
    android: "Non Android", 
    desktop: "Dekstop", 
    ios: "Non iOS", 
    multiplatform: "Non Multiplatform", 
    gallery: ['https://res.cloudinary.com/bekhan/image/upload/v1647404130/lomba/memulai_pemrograman_dengan_c_logo_230421131703_xiv97i.jpg', 
    'https://res.cloudinary.com/bekhan/image/upload/v1647404134/lomba/belajar_prinsip_pemrograman_solid_logo_230421132206_j405zl.jpg',
    'https://res.cloudinary.com/bekhan/image/upload/v1647404428/lomba/memulai_pemrograman_dengan_python_logo_230421132353_mxdc0p.jpg'
    ]
    ),
    ProgrammingModules(
    materi: "Memulai Pemrograman Dengan C", 
    estimasi: "15 hari",
    desc: """Bahasa C adalah bahasa prosedural yang memiliki banyak kegunaan. Ia didesain untuk di-compile secara sederhana agar mendukung akses ke low-level memory, pendukung bahasa dalam instruksi mesin. Meskipun didesain secara minimal, C bisa digunakan sebagai bahasa multi-platform. Menurut GitHub, C adalah 1 dari 10 bahasa pemrogramman terbaik. Bahasa C sangatlah cocok bagi Anda yang ingin masuk ke dunia programming. Oleh karena itu, bahasa C sering digunakan sebagai bahasa pertama untuk belajar pemrograman. 
Cocok bagi Anda yang belum pernah belajar bahasa pemrograman apa pun, karena C termasuk bahasa yang mudah untuk dipelajari.
Bahasa C bisa menjadi pijakan utama sebelum Anda belajar bahasa populer seperti C++/C#.
Bahasa C adalah bahasa yang multi-platform.
Bagi Anda yang tertarik dengan menggeluti programming di sistem hardware, C adalah salah satu bahasa yang direkomendasikan karena runtime-nya cepat.
Bahasa C masih relevan dengan kebutuhan industri saat ini.
Bahasa C menjadi salah satu dari 10 bahasa terbaik menurut GitHub.""", 
    silabus: """Pendahuluan : Memperkenalkan sejarah C, contoh aplikasi, dan istilah-istilah yang dipakai. Juga dibahas IDE yang disarankan. (35 menit)
Program Kecil dalam Bahasa C : Mengenalkan bahasa C dengan program terkecil yaitu Halo Dunia. (50 menit)
Inisialisasi dan Assignment : Mengenalkan apa itu variabel dan tipe dasar yang ada, seperti integer (bilangan bulat), bilangan riil (bilangan pecahan), dan karakter (huruf). Serta memahami dua cara yang dapat dilakukan untuk mengisi nilai dari sebuah variabel, yakni inisialisasi dan assignment. (1 jam 45 menit)
Konstanta : Mengenalkan arti konstanta, yakni variabel yang tidak dapat diubah. Serta mengenalkan perbedaan antara konstanta dengan variabel. (25 menit)
Baca-Tulis : Mengajarkan bagaimana memasukkan suatu nilai ke variabel. (50 menit)
Operasi Sederhana dengan Komputer : Mengajarkan operasi-operasi yang ada di dalam C, seperti aritmatika, boolean, perbandingan, dll. (1 jam 25 menit)
Instruksi Kondisional : Mengenalkan instruksi kondisional agar program dapat berjalan sesuai alur yang ditetapkan. (1 jam 25 menit)
Instruksi Pengulangan : Mengenalkan instruksi pengulangan agar program dapat mengulangi instruksi secara berulang, seperti for, while-do, do-while, dan for. (1 jam 35 menit)
Array-Tabel : Mengenalkan array untuk menyimpan banyak nilai dalam suatu bentuk matriks. (2 jam)
Subprogram : Mengenalkan subprogram fungsi dan prosedur, yaitu sebuah abstraksi suatu proses komputasi yang dapat dipanggil oleh sebuah program. (1 jam 15 menit)
Penutup : Latihan problem solving dengan membuat program-program sederhana seperti operasi komputasi, instruksi kondisional, instruksi perulangan, tabel atau array, serta fungsi dan prosedur. (2 jam)""", 
    image: "https://res.cloudinary.com/bekhan/image/upload/v1647404130/lomba/memulai_pemrograman_dengan_c_logo_230421131703_xiv97i.jpg", 
    android: "Non Android", 
    desktop: "Dekstop", 
    ios: "Non iOS", 
    multiplatform: "Non Multiplatform", 
    gallery: ['https://res.cloudinary.com/bekhan/image/upload/v1647404130/lomba/memulai_pemrograman_dengan_c_logo_230421131703_xiv97i.jpg', 
    'https://res.cloudinary.com/bekhan/image/upload/v1647404134/lomba/belajar_prinsip_pemrograman_solid_logo_230421132206_j405zl.jpg',
    'https://res.cloudinary.com/bekhan/image/upload/v1647404428/lomba/memulai_pemrograman_dengan_python_logo_230421132353_mxdc0p.jpg'
    ]
    ),
    ProgrammingModules(
    materi: "Belajar Prinsip Pemrograman SOLID", 
    estimasi: "1 Bulan",
    desc: """Semua orang bisa membuat kode program selama dia tahu suatu bahasa pemrograman. Tetapi membuat kode program yang mudah dimengerti, mudah dikelola, dan mudah dikembangkan adalah tantangan yang nyata, bahkan untuk seorang yang sudah menjadi programmer sekalipun. Di dalam paradigma OOP (object-oriented programming), terdapat prinsip SOLID sebagai solusi yang bisa digunakan untuk menyelesaikan problem tersebut. Prinsip ini dikenalkan oleh Robert C. Martin, seorang engineer dan penulis dari buku Clean Code. 
Prinsip SOLID adalah salah satu fondasi utama dalam mengembangkan kode program agar lebih mudah dimengerti, dikelola, dan dikembangkan. 
Prinsip SOLID mampu diterapkan di banyak bahasa yang berparadigma OOP. 
Banyak perusahaan mensyaratkan pemahaman prinsip SOLID ketika mencari seorang developer. 
Menerapkan prinsip SOLID akan menghindarkan Anda dari membuat aplikasi yang mudah memiliki bug karena penerapan desain yang buruk. 
Beberapa bahasa pemrograman akan digunakan di kelas ini, sehingga apa pun bahasa yang sedang dipelajari, akan terbantu progres belajarnya""", 
    silabus: """Semua orang bisa membuat kode program selama dia tahu suatu bahasa pemrograman. Tetapi membuat kode program yang mudah dimengerti, mudah dikelola, dan mudah dikembangkan adalah tantangan yang nyata, bahkan untuk seorang yang sudah menjadi programmer sekalipun. Di dalam paradigma OOP (object-oriented programming), terdapat prinsip SOLID sebagai solusi yang bisa digunakan untuk menyelesaikan problem tersebut. Prinsip ini dikenalkan oleh Robert C. Martin, seorang engineer dan penulis dari buku Clean Code. 
Prinsip SOLID adalah salah satu fondasi utama dalam mengembangkan kode program agar lebih mudah dimengerti, dikelola, dan dikembangkan. 
Prinsip SOLID mampu diterapkan di banyak bahasa yang berparadigma OOP. 
Banyak perusahaan mensyaratkan pemahaman prinsip SOLID ketika mencari seorang developer. 
Menerapkan prinsip SOLID akan menghindarkan Anda dari membuat aplikasi yang mudah memiliki bug karena penerapan desain yang buruk. 
Beberapa bahasa pemrograman akan digunakan di kelas ini, sehingga apa pun bahasa yang sedang dipelajari, akan terbantu progres belajarnya""", 
    image: "https://res.cloudinary.com/bekhan/image/upload/v1647404134/lomba/belajar_prinsip_pemrograman_solid_logo_230421132206_j405zl.jpg", 
    android: "Android", 
    desktop: "Dekstop", 
    ios: "iOS", 
    multiplatform: "Multiplatform", 
    gallery: ['https://res.cloudinary.com/bekhan/image/upload/v1647404130/lomba/memulai_pemrograman_dengan_c_logo_230421131703_xiv97i.jpg', 
    'https://res.cloudinary.com/bekhan/image/upload/v1647404134/lomba/belajar_prinsip_pemrograman_solid_logo_230421132206_j405zl.jpg',
    'https://res.cloudinary.com/bekhan/image/upload/v1647404428/lomba/memulai_pemrograman_dengan_python_logo_230421132353_mxdc0p.jpg',
    'https://res.cloudinary.com/bekhan/image/upload/v1647405398/lomba/memulai_pemrograman_dengan_java_logo_230421162124_zpnsa9.jpg'
    ]
    ),
    ProgrammingModules(
    materi: "Memulai Pemrograman Dengan Java", 
    estimasi: "30 Hari",
    desc: """Java merupakan bahasa yang diciptakan oleh James Gosling di tahun 1990-an. Java muncul sebagai bahasa yang dapat dijalankan di berbagai platform tanpa perlu re-kompilasi. Berdasarkan TIOBE Programming Community Index, Java masih merupakan salah satu bahasa pemrograman terpopuler di dunia. Oracle menyatakan 90% perusahaan terkemuka pada daftar Fortune 500 pernah menggunakan bahasa Java. Selain itu, Java juga dapat digunakan untuk mengembangkan aplikasi pada platform desktop, web, mobile, embedded, dan IoT. 
Bahasa Java merupakan bahasa terpopuler yang pernah digunakan oleh 90% perusahaan ternama.
Dengan bahasa Java, Anda dapat mengembangkan aplikasi untuk platform desktop, web, mobile, hingga embedded dan IoT.
Siapa pun Anda, jika ingin menjadi Java Developer harus memiliki pengetahuan dasar pemrograman Java seperti Java Dasar, Control Flow, Collection Type, dan Object-Oriented Programming.
Penggunaan bahasa Java itu gratis (open source), sehingga siapa saja dapat mempelajari dan menggunakannya.
Berdasarkan TIOBE Programming Community Index, Java masih menjadi salah satu bahasa pemrograman terpopuler di dunia. """, 
    silabus: """Pengenalan Java : Pengenalan mengenai apa itu Java dan mengapa harus menggunakan Java, serta Anda akan berkenalan dengan IDE untuk membuat aplikasi multiplatform. (55 menit)
Java Dasar : Menjelaskan mengenai dasar-dasar bahasa Java, seperti struktur dasar, tipe data, string, operator, fungsi input output, dan array. (2 jam 20 menit)
Control Flow : Menjelaskan bagaimana control flow atau aliran bekerja dalam bahasa Java, seperti perulangan dan percabangan. (55 menit)
Collection Type : Menjelaskan berbagai tipe data koleksi seperti list, set, dan map. (35 menit)
Object-Oriented Programming (OOP) : Memahami konsep OOP (Object-Oriented Programming) untuk mempermudah pengembangan sebuah program seperti class dan object, method, member, access modifier, encapsulation, inheritance, dan interface. (3 jam 55 menit)
Common Class : Mempelajari class-class yang sering digunakan dalam mengembangkan sebuah program dengan bahasa Java seperti generic, exception, input output, date time, dan casting. (2 jam 45 menit)
Studi Kasus : Melatih implementasi bahasa Java dalam sebuah studi kasus tertentu seperti membuat sebuah program untuk menghitung suhu air, vokal konsonan, dan bangun datar. (2 jam)""", 
    image: "https://res.cloudinary.com/bekhan/image/upload/v1647405398/lomba/memulai_pemrograman_dengan_java_logo_230421162124_zpnsa9.jpg", 
    android: "Android", 
    desktop: "Dekstop", 
    ios: "iOS", 
    multiplatform: "Multiplatform", 
    gallery: ['https://res.cloudinary.com/bekhan/image/upload/v1647404130/lomba/memulai_pemrograman_dengan_c_logo_230421131703_xiv97i.jpg', 
    'https://res.cloudinary.com/bekhan/image/upload/v1647404134/lomba/belajar_prinsip_pemrograman_solid_logo_230421132206_j405zl.jpg',
    'https://res.cloudinary.com/bekhan/image/upload/v1647404428/lomba/memulai_pemrograman_dengan_python_logo_230421132353_mxdc0p.jpg',
    'https://res.cloudinary.com/bekhan/image/upload/v1647405398/lomba/memulai_pemrograman_dengan_java_logo_230421162124_zpnsa9.jpg'
    ]
    ),
    ProgrammingModules(
    materi: "Memulai Pemrograman Dengan Dart", 
    estimasi: "1 Bulan",
    desc: """Dart adalah sebuah bahasa pemrograman yang dikembangkan oleh Google dan merupakan bahasa pemrograman resmi untuk Flutter, sebuah UI toolkit dan aplikasi multiplatform dari Google. Flutter sendiri telah digunakan oleh berbagai perusahaan besar seperti Google, Alibaba.com, dan Tencent karena dapat menghemat waktu dan tenaga dengan cara cukup membutuhkan satu codebase untuk mengembangkan aplikasi di berbagai platform, daripada harus menghabiskan waktu untuk membuat codebase terpisah untuk masing-masing platform.
Dart merupakan bahasa yang wajib Anda kuasai untuk mengembangkan aplikasi Flutter.
Dengan Dart, Anda hanya perlu satu codebase untuk dapat mengembangkan aplikasi pada berbagai platform seperti web, Android, dan iOS.
Bahasa Dart dirancang supaya familier dengan bahasa pemrograman lain sehingga mudah bagi yang sudah mengerti bahasa pemrograman lain maupun bagi yang baru memulai perjalanannya sebagai developer.
Penggunaan bahasa Dart itu gratis (open source) dan dikembangkan oleh komunitas developer ahli yang aktif dan terbuka.
Dart adalah bahasa yang dioptimalkan untuk pengembangan UI secara cepat dan produktif pada banyak platform.""", 
    silabus: """Pengenalan Dart : Mengenal apa itu Dart, karakteristiknya, dan platform apa saja yang didukung. (45 menit)
Program Dart Pertamamu : Menyiapkan tools apa saja yang diperlukan untuk membuat program pertama menggunakan Dart. (1 jam 55 menit)
Dart Fundamental : Memahami tentang teori dasar Dart dengan mempelajari konsep seperti menggunakan variabel, tipe data, operator, dan membuat fungsi dasar. (4 jam 20 menit)
Control Flow : Memahami tentang bagaimana mengatur alur dari suatu program Dart, seperti percabangan dan perulangan. (1 jam 55 menit)
Collection : Mempelajari tipe data dari Dart yang berguna untuk menyimpan beberapa objek data. (1 jam 15 menit)
Object Oriented Programming : Memahami mengenai konsep OOP pada Dart, bagaimana membuat sebuah class, properti dan fungsi dari class, serta mensimulasikan problematika dunia nyata dalam paradigma Object-Oriented Programming (OOP). (3 jam 5 menit)
Functional Styles : Memahami konsep functional programming seperti perilaku fungsi, lambda, high-order, dan closures. (1 jam 20 menit)
Dart Type System : Memahami tentang type system atau aturan yang digunakan pada Dart. (55 menit)
Dart Futures : Mempelajari bagaimana membuat dan menangani proses asynchronous pada Dart. (1 jam 5 menit)
Effective Dart : Mengenal panduan bagaimana menulis kode Dart yang sesuai dengan coding convention. (50 menit)""", 
    image: "https://res.cloudinary.com/bekhan/image/upload/v1647405398/lomba/memulai_pemrograman_dengan_java_logo_230421162124_zpnsa9.jpg", 
    android: "Android", 
    desktop: "Dekstop", 
    ios: "iOS", 
    multiplatform: "Multiplatform", 
    gallery: ['https://res.cloudinary.com/bekhan/image/upload/v1647404130/lomba/memulai_pemrograman_dengan_c_logo_230421131703_xiv97i.jpg', 
    'https://res.cloudinary.com/bekhan/image/upload/v1647404134/lomba/belajar_prinsip_pemrograman_solid_logo_230421132206_j405zl.jpg',
    'https://res.cloudinary.com/bekhan/image/upload/v1647404428/lomba/memulai_pemrograman_dengan_python_logo_230421132353_mxdc0p.jpg',
    'https://res.cloudinary.com/bekhan/image/upload/v1647405398/lomba/memulai_pemrograman_dengan_java_logo_230421162124_zpnsa9.jpg',
    'https://res.cloudinary.com/bekhan/image/upload/v1647405621/lomba/memulai_pemrograman_dengan_dart_logo_230421132631_ooufiy.jpg'
    ]
    )
];