<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Happy Birthday Aisya 🕷️</title>

  <style>
    @import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Poppins:wght@400;600;700;800&display=swap');

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Poppins', sans-serif;
      color: white;
      background: #05070d;
      overflow-x: hidden;
    }

    /* BACKGROUND */
    .hero {
      min-height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      position: relative;
      padding: 25px;
      background:
        radial-gradient(circle at 50% 20%, rgba(220, 20, 45, .35), transparent 35%),
        linear-gradient(145deg, #05070d, #11182a 55%, #070910);
      overflow: hidden;
    }

    /* GRID */
    .hero::before {
      content: "";
      position: absolute;
      inset: 0;
      opacity: .15;
      background-image:
        linear-gradient(30deg, transparent 48%, white 49%, transparent 50%),
        linear-gradient(150deg, transparent 48%, white 49%, transparent 50%);
      background-size: 70px 70px;
    }

    /* CARD */
    .card {
      width: min(780px, 100%);
      padding: 55px 30px;
      text-align: center;
      position: relative;
      z-index: 3;

      background: rgba(7, 10, 18, .78);
      border: 1px solid rgba(255,255,255,.18);
      border-radius: 30px;

      backdrop-filter: blur(15px);

      box-shadow:
        0 30px 100px rgba(0,0,0,.7),
        0 0 40px rgba(18,101,199,.15);

      animation: muncul 1s ease;
    }

    /* LOGO */
    .logo {
      font-family: 'Bebas Neue', sans-serif;
      font-size: 30px;
      letter-spacing: 5px;
      color: #e51d32;
      text-shadow: 3px 3px #1265c7;
    }

    /* NAME */
    h1 {
      font-family: 'Bebas Neue', sans-serif;
      font-size: clamp(75px, 18vw, 150px);
      line-height: .9;
      letter-spacing: 5px;

      color: #e51d32;

      -webkit-text-stroke: 2px white;

      text-shadow:
        7px 8px 0 #1265c7,
        0 0 35px rgba(229,29,50,.5);

      margin: 18px 0 10px;
    }

    .subtitle {
      font-size: clamp(18px, 4vw, 28px);
      font-weight: 700;
    }

    /* DATE */
    .date {
      display: inline-block;

      margin: 20px 0;
      padding: 11px 26px;

      border-radius: 50px;

      background: #e51d32;
      border: 2px solid white;

      font-weight: 800;

      box-shadow:
        0 0 20px rgba(229,29,50,.5);
    }

    /* MESSAGE */
    .message {
      max-width: 620px;
      margin: auto;

      color: #e7e9ef;

      line-height: 1.8;
      font-size: 15px;
    }

    /* BUTTON */
    button {
      margin-top: 30px;

      padding: 14px 28px;

      border: none;
      border-radius: 50px;

      color: white;
      font-family: Poppins, sans-serif;
      font-weight: 700;

      cursor: pointer;

      background: linear-gradient(
        90deg,
        #e51d32,
        #1265c7
      );

      box-shadow:
        0 10px 30px rgba(18,101,199,.3);

      transition: .3s;
    }

    button:hover {
      transform: translateY(-4px) scale(1.05);
    }

    /* SECRET MESSAGE */
    #secret {
      display: none;

      max-width: 580px;

      margin: 28px auto 0;
      padding: 22px;

      border-radius: 20px;

      background: rgba(255,255,255,.07);
      border: 1px solid rgba(255,255,255,.15);

      line-height: 1.8;

      animation: muncul .6s ease;
    }

    /* SPIDER */
    .spider {
      position: absolute;
      z-index: 2;

      font-size: 75px;

      filter:
        drop-shadow(0 0 12px rgba(229,29,50,.7));

      animation: melayang 4s ease-in-out infinite;
    }

    .spider.one {
      top: 8%;
      right: 8%;
    }

    .spider.two {
      bottom: 8%;
      left: 8%;
      animation-delay: 1.5s;
    }

    /* WEB */
    .web {
      position: absolute;

      width: 420px;
      height: 420px;

      border: 1px solid rgba(255,255,255,.3);
      border-radius: 50%;

      opacity: .2;

      background:
        repeating-conic-gradient(
          from 0deg,
          transparent 0deg 14deg,
          white 15deg 16deg
        ),
        repeating-radial-gradient(
          circle,
          transparent 0 35px,
          white 36px 37px
        );

      animation: putar 35s linear infinite;
    }

    .web.left {
      left: -220px;
      top: -130px;
    }

    .web.right {
      right: -220px;
      bottom: -150px;
    }

    /* SECOND SECTION */
    .section {
      min-height: 70vh;

      padding: 80px 20px;

      display: flex;
      align-items: center;
      justify-content: center;

      background: #070a12;
    }

    .content {
      width: min(850px, 100%);
      text-align: center;
    }

    .tag {
      color: #e51d32;

      font-weight: 800;
      letter-spacing: 3px;
    }

    h2 {
      font-size: clamp(30px, 7vw, 50px);
      margin: 10px 0 25px;
    }

    /* WISH CARDS */
    .wishes {
      display: grid;

      grid-template-columns:
        repeat(auto-fit, minmax(190px, 1fr));

      gap: 16px;

      margin-top: 30px;
    }

    .wish {
      padding: 25px 18px;

      border-radius: 20px;

      background:
        linear-gradient(
          145deg,
          #111827,
          #080b12
        );

      border: 1px solid rgba(255,255,255,.1);

      transition: .3s;
    }

    .wish:hover {
      transform: translateY(-8px);

      border-color: #e51d32;

      box-shadow:
        0 10px 30px rgba(229,29,50,.15);
    }

    .wish b {
      display: block;

      margin-bottom: 8px;

      color: #e51d32;
    }

    /* FOOTER */
    footer {
      padding: 25px;

      text-align: center;

      color: #777;

      background: #05070d;

      font-size: 13px;
    }

    /* ANIMATION */
    @keyframes muncul {
      from {
        opacity: 0;
        transform: translateY(40px);
      }

      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    @keyframes melayang {
      50% {
        transform:
          translateY(-18px)
          rotate(6deg);
      }
    }

    @keyframes putar {
      to {
        transform: rotate(360deg);
      }
    }

    /* MOBILE */
    @media (max-width: 600px) {

      .card {
        padding: 45px 20px;
      }

      .logo {
        font-size: 22px;
      }

      .web {
        width: 300px;
        height: 300px;
      }

      .spider {
        font-size: 50px;
      }
    }
  </style>
</head>

<body>

  <!-- HERO -->
  <section class="hero">

    <div class="web left"></div>
    <div class="web right"></div>

    <div class="spider one">🕷️</div>
    <div class="spider two">🕷️</div>

    <div class="card">

      <div class="logo">
        SPIDER-VERSE • SPECIAL DAY
      </div>

      <h1>AISYA</h1>

      <div class="subtitle">
        🕷️ HAPPY BIRTHDAY 🕷️
      </div>

      <div class="date">
        31 AGUSTUS 🎂
      </div>

      <p class="message">
        Selamat ulang tahun, Aisya! ❤️💙
        <br><br>

        Semoga di umur yang baru,
        semua impian dan harapan baikmu
        semakin dekat untuk menjadi kenyataan.

        Tetap jadi Aisya yang ceria,
        kuat, dan terus berani mengejar mimpi.

        <br><br>

        Karena setiap superhero punya
        perjalanan masing-masing...
        dan cerita Aisya baru saja masuk
        ke chapter berikutnya. 🕸️✨
      </p>

      <button onclick="openMessage()">
        🕸️ BUKA PESAN RAHASIA
      </button>

      <div id="secret">

        <b>🕷️ A SPECIAL MESSAGE FOR AISYA 🕷️</b>

        <br><br>

        Semoga tahun ini dipenuhi lebih banyak
        tawa, pengalaman seru, orang-orang baik,
        dan momen yang bakal selalu dikenang.

        <br><br>

        Jangan berhenti bermimpi,
        karena siapa tahu petualangan terbaikmu
        baru saja dimulai.

        ❤️💙

        <br><br>

        <b>Happy Birthday, Aisya! 🎉</b>

      </div>

    </div>

  </section>


  <!-- WISH SECTION -->
  <section class="section">

    <div class="content">

      <div class="tag">
        YOUR NEW CHAPTER
      </div>

      <h2>
        Wish List Aisya 🕸️
      </h2>

      <p>
        Semoga tahun baru dalam hidupmu
        membawa banyak hal baik.
      </p>

      <div class="wishes">

        <div class="wish">
          <b>❤️ KEBAHAGIAAN</b>
          Lebih banyak alasan untuk tersenyum
          setiap hari.
        </div>

        <div class="wish">
          <b>💙 IMPIAN</b>
          Semoga satu per satu cita-cita
          bisa tercapai.
        </div>

        <div class="wish">
          <b>🕷️ KEBERANIAN</b>
          Berani mencoba hal baru
          dan terus berkembang.
        </div>

        <div class="wish">
          <b>✨ KENANGAN</b>
          Banyak momen seru yang
          layak dikenang.
        </div>

      </div>

    </div>

  </section>


  <footer>
    Made with 🕷️❤️💙 for Aisya • 31 August
  </footer>


  <script>

    function openMessage() {

      const secret =
        document.getElementById("secret");

      secret.style.display = "block";

      document.querySelector("button")
        .textContent =
        "❤️ PESAN SUDAH DIBUKA";

    }

  </script>

</body>
</html>
