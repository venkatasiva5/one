<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>DP Luxury Shop — Premium E-Commerce</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Playfair+Display:wght@500;600;700&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

:root{
    --black:#070707;
    --black2:#101010;
    --panel:#141414;
    --panel2:#1a1a1a;
    --gold:#d6ad62;
    --gold2:#f2d49b;
    --cream:#f5f0e7;
    --white:#fff;
    --muted:#999;
    --border:rgba(214,173,98,.18);
    --radius:20px;
    --max:1280px;
}

*{
    box-sizing:border-box;
}

html{
    scroll-behavior:smooth;
}

body{
    margin:0;
    background:var(--black);
    color:var(--cream);
    font-family:Inter,Arial,sans-serif;
    line-height:1.5;
}

body.modal-open{
    overflow:hidden;
}

a{
    text-decoration:none;
    color:inherit;
}

button,
input{
    font:inherit;
}

button{
    cursor:pointer;
}

/* ================= CONTAINER ================= */

.container{
    width:min(var(--max),calc(100% - 40px));
    margin:auto;
}

/* ================= HEADER ================= */

header{
    position:fixed;
    top:0;
    left:0;
    right:0;
    z-index:1000;
    background:rgba(7,7,7,.82);
    backdrop-filter:blur(20px);
    border-bottom:1px solid rgba(255,255,255,.06);
}

.nav{
    height:82px;
    display:flex;
    align-items:center;
    justify-content:space-between;
    gap:25px;
}

.logo{
    font-family:"Playfair Display",serif;
    font-size:29px;
    letter-spacing:3px;
    white-space:nowrap;
}

.logo span{
    color:var(--gold);
}

.nav-links{
    display:flex;
    align-items:center;
    gap:26px;
}

.nav-links a{
    color:#ccc;
    font-size:12px;
    text-transform:uppercase;
    letter-spacing:1px;
    transition:.3s;
}

.nav-links a:hover{
    color:var(--gold);
}

.nav-right{
    display:flex;
    align-items:center;
    gap:10px;
}

.nav-icon{
    width:42px;
    height:42px;
    border:1px solid rgba(255,255,255,.08);
    background:rgba(255,255,255,.03);
    color:#ddd;
    border-radius:50%;
    display:grid;
    place-items:center;
    transition:.3s;
}

.nav-icon:hover{
    color:var(--gold);
    border-color:var(--gold);
    transform:translateY(-2px);
}

.cart-button{
    position:relative;
}

.cart-badge{
    position:absolute;
    top:-4px;
    right:-3px;
    min-width:19px;
    height:19px;
    padding:0 5px;
    background:var(--gold);
    color:#000;
    font-size:10px;
    font-weight:800;
    border-radius:20px;
    display:grid;
    place-items:center;
}

.mobile-menu-btn{
    display:none;
}

/* ================= HERO ================= */

.hero{
    min-height:800px;
    padding-top:82px;
    display:flex;
    align-items:center;
    position:relative;
    overflow:hidden;

    background:
        linear-gradient(
            90deg,
            rgba(0,0,0,.94) 0%,
            rgba(0,0,0,.68) 45%,
            rgba(0,0,0,.18) 100%
        ),
        url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=2000&q=90")
        center/cover;
}

.hero::after{
    content:"";
    position:absolute;
    inset:auto 0 0;
    height:180px;
    background:linear-gradient(transparent,var(--black));
}

.hero-content{
    position:relative;
    z-index:2;
    max-width:720px;
}

.eyebrow{
    color:var(--gold);
    text-transform:uppercase;
    letter-spacing:5px;
    font-size:11px;
    font-weight:700;
    margin-bottom:20px;
}

.hero h1{
    font-family:"Playfair Display",serif;
    font-size:clamp(55px,7vw,100px);
    line-height:.95;
    margin:0 0 28px;
    font-weight:600;
}

.hero h1 span{
    color:var(--gold);
    font-style:italic;
}

.hero p{
    max-width:570px;
    color:#c7c7c7;
    font-size:16px;
    margin-bottom:35px;
}

.hero-actions{
    display:flex;
    gap:15px;
    flex-wrap:wrap;
}

.btn{
    border:0;
    padding:15px 25px;
    border-radius:50px;
    font-weight:700;
    transition:.3s;
}

.btn-gold{
    background:linear-gradient(135deg,var(--gold2),var(--gold));
    color:#090909;
    box-shadow:0 12px 35px rgba(214,173,98,.18);
}

.btn-gold:hover{
    transform:translateY(-3px);
    box-shadow:0 18px 45px rgba(214,173,98,.3);
}

.btn-outline{
    background:rgba(255,255,255,.04);
    border:1px solid rgba(255,255,255,.2);
    color:#fff;
}

.btn-outline:hover{
    border-color:var(--gold);
    color:var(--gold);
}

.hero-stat{
    position:absolute;
    right:6%;
    bottom:90px;
    z-index:3;
    display:flex;
    gap:40px;
}

.stat strong{
    display:block;
    font-family:"Playfair Display",serif;
    font-size:28px;
    color:var(--gold);
}

.stat span{
    font-size:10px;
    color:#aaa;
    text-transform:uppercase;
    letter-spacing:2px;
}

/* ================= SECTIONS ================= */

.section{
    padding:100px 0;
}

.section-head{
    display:flex;
    justify-content:space-between;
    align-items:end;
    gap:20px;
    margin-bottom:38px;
}

.section-label{
    color:var(--gold);
    font-size:10px;
    letter-spacing:4px;
    text-transform:uppercase;
    font-weight:700;
}

.section h2{
    font-family:"Playfair Display",serif;
    font-size:45px;
    font-weight:500;
    margin:8px 0 0;
}

.section-description{
    color:#888;
    max-width:460px;
}

/* ================= COLLECTIONS ================= */

.collections{
    display:grid;
    grid-template-columns:repeat(5,1fr);
    gap:14px;
}

.collection{
    position:relative;
    height:190px;
    overflow:hidden;
    border-radius:18px;
    background:#111;
    border:1px solid rgba(255,255,255,.06);
    cursor:pointer;
}

.collection img{
    width:100%;
    height:100%;
    object-fit:cover;
    opacity:.48;
    transition:.5s;
}

.collection:hover img{
    transform:scale(1.08);
    opacity:.72;
}

.collection::after{
    content:"";
    position:absolute;
    inset:0;
    background:linear-gradient(
        transparent,
        rgba(0,0,0,.92)
    );
}

.collection-content{
    position:absolute;
    z-index:2;
    left:18px;
    bottom:15px;
}

.collection i{
    color:var(--gold);
    font-size:18px;
}

.collection h3{
    margin:5px 0 0;
    font-family:"Playfair Display",serif;
    font-size:18px;
}

.collection small{
    color:#999;
    font-size:10px;
}

/* ================= FILTERS ================= */

.filters{
    display:flex;
    gap:9px;
    flex-wrap:wrap;
}

.filter{
    padding:9px 16px;
    border:1px solid rgba(255,255,255,.09);
    color:#999;
    background:transparent;
    border-radius:30px;
    font-size:12px;
}

.filter.active,
.filter:hover{
    color:#000;
    background:var(--gold);
    border-color:var(--gold);
}

/* ================= PRODUCTS ================= */

.products{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:20px;
}

.product{
    background:linear-gradient(145deg,#151515,#0e0e0e);
    border:1px solid rgba(255,255,255,.06);
    border-radius:20px;
    overflow:hidden;
    transition:.4s;
}

.product:hover{
    transform:translateY(-8px);
    border-color:var(--border);
    box-shadow:0 25px 60px rgba(0,0,0,.5);
}

.product-image{
    height:300px;
    position:relative;
    overflow:hidden;
    background:#111;
}

.product-image img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.5s;
}

.product:hover .product-image img{
    transform:scale(1.07);
}

.badge{
    position:absolute;
    top:15px;
    left:15px;
    background:var(--gold);
    color:#000;
    padding:6px 10px;
    border-radius:30px;
    font-size:10px;
    font-weight:800;
    z-index:2;
}

.wishlist{
    position:absolute;
    top:13px;
    right:13px;
    width:38px;
    height:38px;
    border-radius:50%;
    border:1px solid rgba(255,255,255,.1);
    background:rgba(0,0,0,.55);
    color:#fff;
    display:grid;
    place-items:center;
    z-index:3;
}

.wishlist.active{
    color:#ff5b6e;
}

.quick-view{
    position:absolute;
    left:15px;
    right:15px;
    bottom:-55px;
    background:rgba(255,255,255,.94);
    color:#000;
    border:0;
    border-radius:30px;
    padding:13px;
    font-size:12px;
    font-weight:800;
    transition:.4s;
    z-index:4;
}

.product:hover .quick-view{
    bottom:15px;
}

.product-info{
    padding:19px;
}

.product-category{
    color:var(--gold);
    font-size:9px;
    text-transform:uppercase;
    letter-spacing:2px;
}

.product h3{
    margin:7px 0;
    font-family:"Playfair Display",serif;
    font-size:20px;
    font-weight:500;
}

.rating{
    color:var(--gold);
    font-size:11px;
}

.rating span{
    color:#777;
    margin-left:4px;
}

.product-bottom{
    display:flex;
    align-items:center;
    justify-content:space-between;
    margin-top:15px;
}

.price{
    font-size:20px;
    font-weight:700;
}

.old-price{
    color:#666;
    text-decoration:line-through;
    font-size:12px;
    margin-left:6px;
}

.add-cart{
    width:42px;
    height:42px;
    border:1px solid var(--border);
    color:var(--gold);
    background:transparent;
    border-radius:50%;
    transition:.3s;
}

.add-cart:hover{
    background:var(--gold);
    color:#000;
}

/* ================= FEATURE ================= */

.feature{
    display:grid;
    grid-template-columns:1fr 1fr;
    min-height:480px;
    overflow:hidden;
    border-radius:25px;
    background:#151515;
}

.feature-image{
    min-height:480px;
    background:
        url("https://images.unsplash.com/photo-1517336714739-489689fd1ca8?auto=format&fit=crop&w=1200&q=90")
        center/cover;
}

.feature-content{
    padding:70px;
    display:flex;
    flex-direction:column;
    justify-content:center;
}

.feature-content h2{
    font-family:"Playfair Display",serif;
    font-size:52px;
    line-height:1;
    margin:12px 0 20px;
}

.feature-content p{
    color:#999;
}

.price-large{
    color:var(--gold);
    font-size:32px;
    font-weight:700;
    margin:20px 0;
}

.countdown{
    display:flex;
    gap:10px;
    margin-bottom:25px;
}

.time{
    width:65px;
    height:65px;
    display:grid;
    place-items:center;
    background:#0b0b0b;
    border:1px solid rgba(214,173,98,.15);
    border-radius:12px;
}

.time strong{
    display:block;
    font-size:18px;
    color:#fff;
    text-align:center;
}

.time span{
    display:block;
    font-size:8px;
    color:#777;
    text-transform:uppercase;
}

/* ================= TRUST ================= */

.trust{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:15px;
}

.trust-card{
    padding:28px;
    background:#111;
    border:1px solid rgba(255,255,255,.06);
    border-radius:18px;
}

.trust-card i{
    color:var(--gold);
    font-size:22px;
    margin-bottom:15px;
}

.trust-card h3{
    font-size:14px;
    margin:0 0 6px;
}

.trust-card p{
    margin:0;
    color:#777;
    font-size:12px;
}

/* ================= NEWSLETTER ================= */

.newsletter{
    text-align:center;
    padding:85px 30px;
    border:1px solid var(--border);
    border-radius:25px;

    background:
        radial-gradient(
            circle at 50% 0,
            rgba(214,173,98,.12),
            transparent 45%
        ),
        #111;
}

.newsletter h2{
    font-size:50px;
}

.newsletter p{
    color:#888;
}

.newsletter-form{
    max-width:520px;
    margin:30px auto 0;
    display:flex;
    padding:5px;
    background:#080808;
    border:1px solid rgba(255,255,255,.1);
    border-radius:50px;
}

.newsletter-form input{
    flex:1;
    min-width:0;
    background:transparent;
    border:0;
    outline:0;
    color:white;
    padding:12px 18px;
}

/* ================= FOOTER ================= */

footer{
    border-top:1px solid rgba(255,255,255,.07);
    padding:65px 0 25px;
}

.footer-grid{
    display:grid;
    grid-template-columns:2fr 1fr 1fr 1fr;
    gap:50px;
}

.footer-brand{
    font-family:"Playfair Display",serif;
    font-size:28px;
}

.footer-brand span{
    color:var(--gold);
}

.footer-col h4{
    color:#fff;
    font-size:12px;
    text-transform:uppercase;
    letter-spacing:2px;
}

.footer-col a{
    display:block;
    color:#777;
    font-size:13px;
    margin:12px 0;
}

.footer-col a:hover{
    color:var(--gold);
}

.socials{
    display:flex;
    gap:9px;
    margin-top:20px;
}

.social{
    width:38px;
    height:38px;
    border:1px solid rgba(255,255,255,.1);
    border-radius:50%;
    display:grid;
    place-items:center;
    color:#888;
}

.social:hover{
    color:var(--gold);
    border-color:var(--gold);
}

.copyright{
    border-top:1px solid rgba(255,255,255,.06);
    margin-top:50px;
    padding-top:22px;
    text-align:center;
    color:#555;
    font-size:11px;
}

/* ================= CART ================= */

.overlay{
    position:fixed;
    inset:0;
    background:rgba(0,0,0,.7);
    backdrop-filter:blur(5px);
    z-index:2000;
    opacity:0;
    visibility:hidden;
    transition:.3s;
}

.overlay.show{
    opacity:1;
    visibility:visible;
}

.cart-drawer{
    position:fixed;
    top:0;
    right:-450px;
    width:min(430px,100%);
    height:100vh;
    background:#111;
    z-index:2001;
    border-left:1px solid var(--border);
    transition:.4s;
    display:flex;
    flex-direction:column;
}

.cart-drawer.open{
    right:0;
}

.cart-header{
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:25px;
    border-bottom:1px solid rgba(255,255,255,.07);
}

.cart-header h2{
    font-family:"Playfair Display",serif;
    margin:0;
}

.close{
    background:none;
    border:0;
    color:#aaa;
    font-size:20px;
}

.cart-items{
    flex:1;
    overflow:auto;
    padding:20px;
}

.cart-item{
    display:flex;
    gap:13px;
    padding:14px 0;
    border-bottom:1px solid rgba(255,255,255,.06);
}

.cart-item img{
    width:75px;
    height:75px;
    border-radius:10px;
    object-fit:cover;
}

.cart-item-info{
    flex:1;
}

.cart-item-info h4{
    font-family:"Playfair Display",serif;
    font-size:16px;
    margin:0 0 5px;
}

.cart-item-info p{
    color:var(--gold);
    font-size:13px;
    margin:0;
}

.qty{
    display:flex;
    align-items:center;
    gap:10px;
    margin-top:10px;
}

.qty button{
    width:25px;
    height:25px;
    border-radius:50%;
    border:1px solid #333;
    background:#191919;
    color:#fff;
}

.remove{
    background:none !important;
    border:0 !important;
    color:#666 !important;
    width:auto !important;
}

.cart-footer{
    padding:25px;
    border-top:1px solid rgba(255,255,255,.07);
}

.total{
    display:flex;
    justify-content:space-between;
    margin-bottom:18px;
    font-size:18px;
}

.total strong{
    color:var(--gold);
}

.empty-cart{
    text-align:center;
    color:#666;
    padding:80px 20px;
}

.empty-cart i{
    font-size:40px;
    color:#333;
    margin-bottom:15px;
}

/* ================= MODAL ================= */

.modal{
    position:fixed;
    inset:0;
    z-index:3000;
    display:grid;
    place-items:center;
    padding:20px;
    background:rgba(0,0,0,.75);
    backdrop-filter:blur(8px);
    opacity:0;
    visibility:hidden;
    transition:.3s;
}

.modal.show{
    opacity:1;
    visibility:visible;
}

.modal-card{
    width:min(900px,100%);
    max-height:90vh;
    overflow:auto;
    background:#121212;
    border:1px solid var(--border);
    border-radius:25px;
    display:grid;
    grid-template-columns:1fr 1fr;
    position:relative;
}

.modal-image{
    min-height:520px;
}

.modal-image img{
    width:100%;
    height:100%;
    object-fit:cover;
}

.modal-content{
    padding:50px;
    display:flex;
    flex-direction:column;
    justify-content:center;
}

.modal-content h2{
    font-family:"Playfair Display",serif;
    font-size:40px;
    margin:10px 0;
}

.modal-close{
    position:absolute;
    right:18px;
    top:18px;
    z-index:3;
    width:40px;
    height:40px;
    border-radius:50%;
    background:#000;
    border:1px solid #333;
    color:#fff;
}

/* ================= TOAST ================= */

.toast{
    position:fixed;
    bottom:25px;
    left:50%;
    transform:translate(-50%,100px);
    background:#f3ead8;
    color:#111;
    padding:13px 20px;
    border-radius:50px;
    z-index:5000;
    font-size:13px;
    font-weight:700;
    opacity:0;
    transition:.4s;
}

.toast.show{
    opacity:1;
    transform:translate(-50%,0);
}

/* ================= RESPONSIVE ================= */

@media(max-width:1150px){

    .collections{
        grid-template-columns:repeat(4,1fr);
    }

    .products{
        grid-template-columns:repeat(3,1fr);
    }

    .nav-links{
        display:none;
    }

    .mobile-menu-btn{
        display:grid;
    }
}

@media(max-width:850px){

    .collections{
        grid-template-columns:repeat(3,1fr);
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .hero-stat{
        display:none;
    }

    .feature{
        grid-template-columns:1fr;
    }

    .feature-image{
        min-height:350px;
    }

    .trust{
        grid-template-columns:repeat(2,1fr);
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
    }
}

@media(max-width:650px){

    .container{
        width:min(100% - 28px,var(--max));
    }

    .nav{
        height:70px;
    }

    .logo{
        font-size:23px;
    }

    .nav-right .nav-icon:first-child{
        display:none;
    }

    .hero{
        min-height:700px;
        padding-top:70px;
    }

    .hero h1{
        font-size:55px;
    }

    .hero p{
        font-size:14px;
    }

    .section{
        padding:70px 0;
    }

    .section-head{
        display:block;
    }

    .section h2{
        font-size:36px;
    }

    .section-description{
        margin-top:10px;
    }

    .collections{
        grid-template-columns:repeat(2,1fr);
    }

    .collection{
        height:150px;
    }

    .products{
        grid-template-columns:1fr;
    }

    .product-image{
        height:330px;
    }

    .feature-content{
        padding:35px;
    }

    .feature-content h2{
        font-size:40px;
    }

    .trust{
        grid-template-columns:1fr 1fr;
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
        gap:30px;
    }

    .footer-grid > div:first-child{
        grid-column:1/-1;
    }

    .modal-card{
        grid-template-columns:1fr;
    }

    .modal-image{
        height:300px;
        min-height:300px;
    }

    .modal-content{
        padding:30px;
    }

    .newsletter h2{
        font-size:38px;
    }

    .newsletter-form{
        display:block;
        background:transparent;
        border:0;
    }

    .newsletter-form input{
        width:100%;
        background:#080808;
        border:1px solid #333;
        border-radius:50px;
        margin-bottom:10px;
    }

    .newsletter-form button{
        width:100%;
    }
}

@media(max-width:430px){

    .collections{
        grid-template-columns:1fr 1fr;
    }

    .trust{
        grid-template-columns:1fr;
    }

    .footer-grid{
        grid-template-columns:1fr;
    }

    .footer-grid > div:first-child{
        grid-column:auto;
    }
}

</style>
</head>

<body>

<!-- ================= HEADER ================= -->

<header>

<div class="container nav">

    <a href="#home" class="logo">
        DP<span>.</span>
    </a>

    <nav class="nav-links">

        <a href="#home">Home</a>
        <a href="#collections">Collections</a>
        <a href="#products">Shop</a>
        <a href="#deals">Exclusive</a>
        <a href="#about">About</a>

    </nav>

    <div class="nav-right">

        <button class="nav-icon" id="searchButton">
            <i class="fa-solid fa-magnifying-glass"></i>
        </button>

        <button class="nav-icon" id="accountButton">
            <i class="fa-regular fa-user"></i>
        </button>

        <button class="nav-icon cart-button" id="openCart">

            <i class="fa-solid fa-bag-shopping"></i>

            <span class="cart-badge" id="cartCount">
                0
            </span>

        </button>

        <button class="nav-icon mobile-menu-btn" id="mobileMenu">

            <i class="fa-solid fa-bars"></i>

        </button>

    </div>

</div>

</header>


<main>

<!-- ================= HERO ================= -->

<section class="hero" id="home">

<div class="container">

    <div class="hero-content">

        <div class="eyebrow">
            DP Luxury Shop
        </div>

        <h1>
            Curated for<br>
            <span>Those Who</span><br>
            Demand More.
        </h1>

        <p>
            Discover an exceptional world of technology,
            fashion, beauty, lifestyle, travel and luxury
            essentials selected for modern living.
        </p>

        <div class="hero-actions">

            <button
                class="btn btn-gold"
                onclick="scrollToProducts()"
            >
                Explore Collection
                <i class="fa-solid fa-arrow-right"></i>
            </button>

            <button
                class="btn btn-outline"
                onclick="document.getElementById('deals').scrollIntoView({behavior:'smooth'})"
            >
                View Exclusive
            </button>

        </div>

    </div>

</div>

<div class="hero-stat">

    <div class="stat">
        <strong>25K+</strong>
        <span>Products</span>
    </div>

    <div class="stat">
        <strong>98%</strong>
        <span>Happy Clients</span>
    </div>

    <div class="stat">
        <strong>24/7</strong>
        <span>Concierge</span>
    </div>

</div>

</section>


<!-- ================= COLLECTIONS ================= -->

<section class="section" id="collections">

<div class="container">

    <div class="section-head">

        <div>

            <div class="section-label">
                Discover
            </div>

            <h2>
                Luxury Collections
            </h2>

        </div>

        <p class="section-description">
            Explore every category at DP Luxury Shop,
            from premium technology and fashion to
            beauty, travel, home and lifestyle.
        </p>

    </div>

    <div
        class="collections"
        id="collectionsGrid"
    ></div>

</div>

</section>


<!-- ================= PRODUCTS ================= -->

<section class="section" id="products">

<div class="container">

    <div class="section-head">

        <div>

            <div class="section-label">
                The Edit
            </div>

            <h2>
                Trending Now
            </h2>

        </div>

        <div class="filters">

            <button
                class="filter active"
                data-filter="all"
            >
                All
            </button>

            <button
                class="filter"
                data-filter="technology"
            >
                Technology
            </button>

            <button
                class="filter"
                data-filter="fashion"
            >
                Fashion
            </button>

            <button
                class="filter"
                data-filter="beauty"
            >
                Beauty
            </button>

            <button
                class="filter"
                data-filter="lifestyle"
            >
                Lifestyle
            </button>

            <button
                class="filter"
                data-filter="travel"
            >
                Travel
            </button>

        </div>

    </div>

    <div
        class="products"
        id="productsGrid"
    ></div>

</div>

</section>


<!-- ================= EXCLUSIVE DEAL ================= -->

<section class="section" id="deals">

<div class="container">

<div class="feature">

    <div class="feature-image"></div>

    <div class="feature-content">

        <div class="section-label">
            DP Exclusive
        </div>

        <h2>
            MacBook<br>
            Air M2.
        </h2>

        <p>
            Extraordinary performance meets impossibly
            thin design. Experience premium technology
            selected by DP Luxury Shop.
        </p>

        <div class="price-large">
            $999
            <span class="old-price">$1,199</span>
        </div>

        <div class="countdown">

            <div class="time">
                <div>
                    <strong id="days">01</strong>
                    <span>Days</span>
                </div>
            </div>

            <div class="time">
                <div>
                    <strong id="hours">12</strong>
                    <span>Hours</span>
                </div>
            </div>

            <div class="time">
                <div>
                    <strong id="minutes">00</strong>
                    <span>Min</span>
                </div>
            </div>

            <div class="time">
                <div>
                    <strong id="seconds">00</strong>
                    <span>Sec</span>
                </div>
            </div>

        </div>

        <button
            class="btn btn-gold"
            id="dealButton"
        >
            Secure This Deal
            <i class="fa-solid fa-arrow-right"></i>
        </button>

    </div>

</div>

</div>

</section>


<!-- ================= TRUST ================= -->

<section class="section" id="about">

<div class="container">

<div class="section-head">

    <div>

        <div class="section-label">
            The DP Promise
        </div>

        <h2>
            Luxury Without Compromise
        </h2>

    </div>

</div>

<div class="trust">

    <div class="trust-card">

        <i class="fa-solid fa-gem"></i>

        <h3>
            Premium Selection
        </h3>

        <p>
            Every product is carefully selected
            for quality, design and value.
        </p>

    </div>

    <div class="trust-card">

        <i class="fa-solid fa-truck-fast"></i>

        <h3>
            Express Delivery
        </h3>

        <p>
            Fast and secure delivery directly
            to your doorstep.
        </p>

    </div>

    <div class="trust-card">

        <i class="fa-solid fa-shield-halved"></i>

        <h3>
            Secure Shopping
        </h3>

        <p>
            Your shopping experience is designed
            with security and privacy in mind.
        </p>

    </div>

    <div class="trust-card">

        <i class="fa-solid fa-headset"></i>

        <h3>
            Personal Concierge
        </h3>

        <p>
            Get assistance whenever you need
            help choosing your next purchase.
        </p>

    </div>

</div>

</div>

</section>


<!-- ================= NEWSLETTER ================= -->

<section class="section">

<div class="container">

<div class="newsletter">

    <div class="section-label">
        Private Access
    </div>

    <h2>
        Enter the DP Inner Circle.
    </h2>

    <p>
        Receive early access to exclusive collections,
        private offers and new arrivals.
    </p>

    <form
        class="newsletter-form"
        id="newsletterForm"
    >

        <input
            type="email"
            id="email"
            placeholder="Your email address"
            required
        >

        <button class="btn btn-gold">
            Join DP
        </button>

    </form>

</div>

</div>

</section>

</main>


<!-- ================= FOOTER ================= -->

<footer>

<div class="container">

<div class="footer-grid">

    <div>

        <div class="footer-brand">
            DP<span>.</span>
        </div>

        <p
            style="
            color:#777;
            max-width:350px;
            font-size:13px
            "
        >
            DP Luxury Shop is a new generation
            of luxury commerce offering exceptional
            products and exceptional experiences.
        </p>

        <div class="socials">

            <a class="social">
                <i class="fa-brands fa-instagram"></i>
            </a>

            <a class="social">
                <i class="fa-brands fa-x-twitter"></i>
            </a>

            <a class="social">
                <i class="fa-brands fa-facebook-f"></i>
            </a>

            <a class="social">
                <i class="fa-brands fa-pinterest-p"></i>
            </a>

        </div>

    </div>


    <div class="footer-col">

        <h4>Explore</h4>

        <a href="#home">Home</a>
        <a href="#products">Shop</a>
        <a href="#collections">Collections</a>
        <a href="#deals">Exclusive</a>

    </div>


    <div class="footer-col">

        <h4>Services</h4>

        <a href="#">Shipping</a>
        <a href="#">Returns</a>
        <a href="#">Concierge</a>
        <a href="#">Contact</a>

    </div>


    <div class="footer-col">

        <h4>Company</h4>

        <a href="#about">About DP</a>
        <a href="#">Careers</a>
        <a href="#">Privacy</a>
        <a href="#">Terms</a>

    </div>

</div>

<div class="copyright">

    © <span id="year"></span>
    DP LUXURY SHOP.
    ALL RIGHTS RESERVED.

</div>

</div>

</footer>


<!-- ================= CART ================= -->

<div
    class="overlay"
    id="overlay"
></div>


<aside
    class="cart-drawer"
    id="cartDrawer"
>

<div class="cart-header">

    <h2>
        Your Bag
    </h2>

    <button
        class="close"
        id="closeCart"
    >
        <i class="fa-solid fa-xmark"></i>
    </button>

</div>


<div
    class="cart-items"
    id="cartItems"
></div>


<div class="cart-footer">

    <div class="total">

        <span>
            Total
        </span>

        <strong id="cartTotal">
            $0
        </strong>

    </div>

    <button
        class="btn btn-gold"
        style="width:100%"
        id="checkout"
    >
        Proceed to Checkout
    </button>

</div>

</aside>


<!-- ================= QUICK VIEW ================= -->

<div
    class="modal"
    id="quickModal"
>

<div class="modal-card">

    <button
        class="modal-close"
        id="closeModal"
    >
        <i class="fa-solid fa-xmark"></i>
    </button>

    <div class="modal-image">

        <img
            id="modalImage"
            src=""
            alt=""
        >

    </div>

    <div class="modal-content">

        <div
            class="product-category"
            id="modalCategory"
        ></div>

        <h2 id="modalTitle"></h2>

        <div class="rating">
            ★★★★★
            <span>
                Premium selection
            </span>
        </div>

        <p
            id="modalDescription"
            style="color:#888"
        ></p>

        <div
            class="price-large"
            id="modalPrice"
        ></div>

        <button
            class="btn btn-gold"
            id="modalAdd"
        >
            Add to Bag
            <i class="fa-solid fa-bag-shopping"></i>
        </button>

    </div>

</div>

</div>


<div
    class="toast"
    id="toast"
></div>


<script>

/* =========================================================
   DP LUXURY SHOP
   PRODUCTS
========================================================= */

const PRODUCTS = [

{
    id:1,
    title:"iPhone 16 Pro Max",
    category:"technology",
    categoryName:"Smartphones",
    price:1299,
    oldPrice:1399,
    rating:5,
    reviews:328,
    badge:"NEW",
    image:"https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=800&q=85",
    description:
    "Titanium design, professional camera system and extraordinary performance."
},

{
    id:2,
    title:"MacBook Pro 14",
    category:"technology",
    categoryName:"Laptops",
    price:1999,
    rating:5,
    reviews:182,
    badge:"BESTSELLER",
    image:"https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=85",
    description:
    "Powerful professional performance in an elegant premium notebook."
},

{
    id:3,
    title:"Chronograph Classic",
    category:"fashion",
    categoryName:"Watches",
    price:489,
    oldPrice:599,
    rating:5,
    reviews:91,
    badge:"-18%",
    image:"https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=800&q=85",
    description:
    "A timeless chronograph designed for refined everyday style."
},

{
    id:4,
    title:"Leather Executive Bag",
    category:"fashion",
    categoryName:"Bags",
    price:299,
    rating:4,
    reviews:74,
    image:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=800&q=85",
    description:
    "Premium leather construction with sophisticated executive styling."
},

{
    id:5,
    title:"Studio Headphones",
    category:"technology",
    categoryName:"Audio",
    price:399,
    oldPrice:449,
    rating:5,
    reviews:245,
    badge:"POPULAR",
    image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=800&q=85",
    description:
    "Immersive high-fidelity sound with luxurious comfort."
},

{
    id:6,
    title:"Signature Fragrance",
    category:"beauty",
    categoryName:"Beauty & Fragrance",
    price:159,
    rating:5,
    reviews:117,
    image:"https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=800&q=85",
    description:
    "An elegant signature fragrance created for unforgettable evenings."
},

{
    id:7,
    title:"Minimal Sneakers",
    category:"fashion",
    categoryName:"Shoes",
    price:179,
    rating:4,
    reviews:83,
    image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=85",
    description:
    "Clean contemporary design with premium comfort."
},

{
    id:8,
    title:"Smart Watch Ultra",
    category:"technology",
    categoryName:"Smart Watches",
    price:549,
    oldPrice:649,
    rating:5,
    reviews:203,
    badge:"LIMITED",
    image:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=800&q=85",
    description:
    "Advanced technology wrapped in an iconic premium silhouette."
},

{
    id:9,
    title:"Diamond Pendant",
    category:"fashion",
    categoryName:"Jewelry",
    price:1890,
    oldPrice:2190,
    rating:5,
    reviews:64,
    badge:"LUXURY",
    image:"https://images.unsplash.com/photo-1515562141207-7a88fb7ce338?auto=format&fit=crop&w=800&q=85",
    description:
    "Elegant jewelry crafted to add timeless brilliance to every occasion."
},

{
    id:10,
    title:"Premium Sunglasses",
    category:"fashion",
    categoryName:"Accessories",
    price:249,
    rating:5,
    reviews:98,
    image:"https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=800&q=85",
    description:
    "Sophisticated eyewear combining modern style with everyday luxury."
},

{
    id:11,
    title:"Luxury Travel Case",
    category:"travel",
    categoryName:"Travel",
    price:399,
    rating:5,
    reviews:72,
    badge:"NEW",
    image:"https://images.unsplash.com/photo-1565026057447-bc90a3dceb87?auto=format&fit=crop&w=800&q=85",
    description:
    "A refined travel essential designed for effortless journeys."
},

{
    id:12,
    title:"Designer Perfume Set",
    category:"beauty",
    categoryName:"Beauty",
    price:279,
    oldPrice:329,
    rating:5,
    reviews:105,
    image:"https://images.unsplash.com/photo-1594035910387-fea47794261f?auto=format&fit=crop&w=800&q=85",
    description:
    "A sophisticated fragrance collection for your personal luxury ritual."
},

{
    id:13,
    title:"Luxury Home Speaker",
    category:"lifestyle",
    categoryName:"Home & Living",
    price:699,
    rating:5,
    reviews:88,
    badge:"PREMIUM",
    image:"https://images.unsplash.com/photo-1545454675-3531b543be5d?auto=format&fit=crop&w=800&q=85",
    description:
    "Premium sound and elegant design created for sophisticated interiors."
},

{
    id:14,
    title:"Executive Leather Wallet",
    category:"fashion",
    categoryName:"Accessories",
    price:149,
    rating:5,
    reviews:136,
    image:"https://images.unsplash.com/photo-1627123424574-724758594e93?auto=format&fit=crop&w=800&q=85",
    description:
    "Minimal luxury crafted from premium leather for everyday carry."
},

{
    id:15,
    title:"Luxury Desk Setup",
    category:"lifestyle",
    categoryName:"Office & Lifestyle",
    price:599,
    rating:5,
    reviews:43,
    image:"https://images.unsplash.com/photo-1497366754035-f200968a6e72?auto=format&fit=crop&w=800&q=85",
    description:
    "Elevate your workspace with refined modern design."
},

{
    id:16,
    title:"Premium Camera",
    category:"technology",
    categoryName:"Cameras",
    price:1599,
    oldPrice:1799,
    rating:5,
    reviews:121,
    badge:"PRO",
    image:"https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=800&q=85",
    description:
    "Professional image quality for creators who demand more."
},

{
    id:17,
    title:"Luxury Running Shoes",
    category:"fashion",
    categoryName:"Sports & Fitness",
    price:229,
    rating:4,
    reviews:81,
    image:"https://images.unsplash.com/photo-1552346154-21d32810aba3?auto=format&fit=crop&w=800&q=85",
    description:
    "Premium athletic comfort with a sophisticated contemporary silhouette."
},

{
    id:18,
    title:"Premium Tablet",
    category:"technology",
    categoryName:"Tablets",
    price:899,
    rating:5,
    reviews:167,
    badge:"POPULAR",
    image:"https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?auto=format&fit=crop&w=800&q=85",
    description:
    "Powerful performance and an immersive display for work and entertainment."
}

];


/* =========================================================
   COLLECTIONS
========================================================= */

const COLLECTIONS = [

{
    name:"Technology",
    filter:"technology",
    icon:"fa-microchip",
    count:"Premium Tech",
    image:"https://images.unsplash.com/photo-1468495244123-6c6c332eeece?auto=format&fit=crop&w=700&q=80"
},

{
    name:"Smartphones",
    filter:"technology",
    icon:"fa-mobile-screen",
    count:"Latest Devices",
    image:"https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=700&q=80"
},

{
    name:"Laptops",
    filter:"technology",
    icon:"fa-laptop",
    count:"Pro Computing",
    image:"https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=700&q=80"
},

{
    name:"Audio",
    filter:"technology",
    icon:"fa-headphones",
    count:"Premium Sound",
    image:"https://images.unsplash.com/photo-1484704849700-f032a568e944?auto=format&fit=crop&w=700&q=80"
},

{
    name:"Smart Watches",
    filter:"technology",
    icon:"fa-clock",
    count:"Wearable Tech",
    image:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=80"
},

{
    name:"Fashion",
    filter:"fashion",
    icon:"fa-shirt",
    count:"Designer Style",
    image:"https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=700&q=80"
},

{
    name:"Watches",
    filter:"fashion",
    icon:"fa-clock",
    count:"Luxury Timepieces",
    image:"https://images.unsplash.com/photo-1523170335258-f5ed11844a49?auto=format&fit=crop&w=700&q=80"
},

{
    name:"Bags",
    filter:"fashion",
    icon:"fa-bag-shopping",
    count:"Designer Bags",
    image:"https://images.unsplash.com/photo-1548036328-c9fa89d128fa?auto=format&fit=crop&w=700&q=80"
},

{
    name:"Shoes",
    filter:"fashion",
    icon:"fa-shoe-prints",
    count:"Premium Footwear",
    image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80"
},

{
    name:"Jewelry",
    filter:"fashion",
    icon:"fa-gem",
    count:"Fine Jewelry",
    image:"https://images.unsplash.com/photo-1515562141207-7a88fb7ce338?auto=format&fit=crop&w=700&q=80"
},

{
    name:"Beauty",
    filter:"beauty",
    icon:"fa-wand-magic-sparkles",
    count:"Beauty & Fragrance",
    image:"https://images.unsplash.com/photo-1556228578-8c89e6adf883?auto=format&fit=crop&w=700&q=80"
},

{
    name:"Fragrance",
    filter:"beauty",
    icon:"fa-spray-can-sparkles",
    count:"Signature Scents",
    image:"https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=700&q=80"
},

{
    name:"Home & Living",
    filter:"lifestyle",
    icon:"fa-house",
    count:"Modern Living",
    image:"https://images.unsplash.com/photo-1600210492486-724fe5c67fb0?auto=format&fit=crop&w=700&q=80"
},

{
    name:"Travel",
    filter:"travel",
    icon:"fa-plane",
    count:"Travel Essentials",
    image:"https://images.unsplash.com/photo-1436491865332-7a61a109cc05?auto=format&fit=crop&w=700&q=80"
},

{
    name:"Sports & Fitness",
    filter:"fashion",
    icon:"fa-dumbbell",
    count:"Performance",
    image:"https://images.unsplash.com/photo-1517836357463-d25dfeac3438?auto=format&fit=crop&w=700&q=80"
},

{
    name:"Accessories",
    filter:"fashion",
    icon:"fa-glasses",
    count:"Luxury Details",
    image:"https://images.unsplash.com/photo-1523779917675-b6ed3a42a561?auto=format&fit=crop&w=700&q=80"
},

{
    name:"Gifts",
    filter:"lifestyle",
    icon:"fa-gift",
    count:"Luxury Gifts",
    image:"https://images.unsplash.com/photo-1512909006721-3d6018887383?auto=format&fit=crop&w=700&q=80"
},

{
    name:"Automotive",
    filter:"lifestyle",
    icon:"fa-car",
    count:"Luxury Lifestyle",
    image:"https://images.unsplash.com/photo-1503376780353-7e6692767b70?auto=format&fit=crop&w=700&q=80"
},

{
    name:"Office & Lifestyle",
    filter:"lifestyle",
    icon:"fa-briefcase",
    count:"Executive Living",
    image:"https://images.unsplash.com/photo-1497366811353-6870744d04b2?auto=format&fit=crop&w=700&q=80"
},

{
    name:"Luxury Deals",
    filter:"all",
    icon:"fa-tags",
    count:"Exclusive Offers",
    image:"https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?auto=format&fit=crop&w=700&q=80"
}

];


/* =========================================================
   STATE
========================================================= */

let cart =
    JSON.parse(localStorage.getItem("dpLuxuryCart")) || [];

let wishlist =
    JSON.parse(localStorage.getItem("dpLuxuryWishlist")) || [];

let activeFilter = "all";

let currentModalProduct = null;


/* =========================================================
   DOM
========================================================= */

const productsGrid =
    document.getElementById("productsGrid");

const collectionsGrid =
    document.getElementById("collectionsGrid");

const cartDrawer =
    document.getElementById("cartDrawer");

const overlay =
    document.getElementById("overlay");

const cartItems =
    document.getElementById("cartItems");

const cartCount =
    document.getElementById("cartCount");

const cartTotal =
    document.getElementById("cartTotal");

const toast =
    document.getElementById("toast");


/* =========================================================
   RENDER COLLECTIONS
========================================================= */

function renderCollections(){

    collectionsGrid.innerHTML =
        COLLECTIONS.map(collection => `

        <div
            class="collection"
            onclick="filterCategory('${collection.filter}')"
        >

            <img
                src="${collection.image}"
                alt="${collection.name}"
            >

            <div class="collection-content">

                <i
                    class="fa-solid ${collection.icon}"
                ></i>

                <h3>
                    ${collection.name}
                </h3>

                <small>
                    ${collection.count}
                </small>

            </div>

        </div>

        `).join("");

}


/* =========================================================
   PRODUCT CARD
========================================================= */

function productCard(p){

    const liked =
        wishlist.includes(p.id);

    return `

    <article class="product">

        <div class="product-image">

            ${
                p.badge
                ?
                `<span class="badge">${p.badge}</span>`
                :
                ""
            }

            <button
                class="wishlist ${liked ? "active" : ""}"
                onclick="toggleWishlist(${p.id})"
            >

                <i
                    class="${
                        liked
                        ? "fa-solid"
                        : "fa-regular"
                    } fa-heart"
                ></i>

            </button>

            <img
                src="${p.image}"
                alt="${p.title}"
            >

            <button
                class="quick-view"
                onclick="openQuickView(${p.id})"
            >
                QUICK VIEW
            </button>

        </div>


        <div class="product-info">

            <div class="product-category">
                ${p.categoryName}
            </div>

            <h3>
                ${p.title}
            </h3>

            <div class="rating">

                ${"★".repeat(p.rating)}

                <span>
                    (${p.reviews})
                </span>

            </div>


            <div class="product-bottom">

                <div class="price">

                    $${p.price.toLocaleString()}

                    ${
                        p.oldPrice
                        ?
                        `<span class="old-price">
                            $${p.oldPrice.toLocaleString()}
                        </span>`
                        :
                        ""
                    }

                </div>


                <button
                    class="add-cart"
                    onclick="addToCart(${p.id})"
                    title="Add to bag"
                >

                    <i class="fa-solid fa-plus"></i>

                </button>

            </div>

        </div>

    </article>

    `;
}


/* =========================================================
   RENDER PRODUCTS
========================================================= */

function renderProducts(){

    const list =
        activeFilter === "all"
        ?
        PRODUCTS
        :
        PRODUCTS.filter(
            p => p.category === activeFilter
        );

    productsGrid.innerHTML =
        list.map(productCard).join("");

}


/* =========================================================
   FILTER
========================================================= */

document.querySelectorAll(".filter")
.forEach(button => {

    button.addEventListener("click",() => {

        document
        .querySelectorAll(".filter")
        .forEach(b =>
            b.classList.remove("active")
        );

        button.classList.add("active");

        activeFilter =
            button.dataset.filter;

        renderProducts();

    });

});


function filterCategory(category){

    activeFilter = category;

    document
    .querySelectorAll(".filter")
    .forEach(button => {

        button.classList.toggle(
            "active",
            button.dataset.filter === category
        );

    });

    renderProducts();

    document
    .getElementById("products")
    .scrollIntoView({
        behavior:"smooth"
    });

}


/* =========================================================
   CART STORAGE
========================================================= */

function saveCart(){

    localStorage.setItem(
        "dpLuxuryCart",
        JSON.stringify(cart)
    );

}


/* =========================================================
   ADD CART
========================================================= */

function addToCart(id){

    const product =
        PRODUCTS.find(
            p => p.id === id
        );

    if(!product) return;

    const existing =
        cart.find(
            item => item.id === id
        );

    if(existing){

        existing.qty++;

    }else{

        cart.push({
            id:id,
            qty:1
        });

    }

    saveCart();

    renderCart();

    showToast(
        `${product.title} added to your bag`
    );

}


/* =========================================================
   QUANTITY
========================================================= */

function changeQty(id,amount){

    const item =
        cart.find(
            i => i.id === id
        );

    if(!item) return;

    item.qty += amount;

    if(item.qty <= 0){

        cart =
            cart.filter(
                i => i.id !== id
            );

    }

    saveCart();

    renderCart();

}


/* =========================================================
   REMOVE
========================================================= */

function removeFromCart(id){

    cart =
        cart.filter(
            i => i.id !== id
        );

    saveCart();

    renderCart();

}


/* =========================================================
   RENDER CART
========================================================= */

function renderCart(){

    const count =
        cart.reduce(
            (sum,item) =>
            sum + item.qty,
            0
        );

    cartCount.textContent =
        count;


    if(cart.length === 0){

        cartItems.innerHTML = `

        <div class="empty-cart">

            <i class="fa-solid fa-bag-shopping"></i>

            <p>
                Your bag is currently empty.
            </p>

        </div>

        `;

        cartTotal.textContent =
            "$0";

        return;

    }


    let total = 0;


    cartItems.innerHTML =
        cart.map(item => {

            const p =
                PRODUCTS.find(
                    product =>
                    product.id === item.id
                );

            const subtotal =
                p.price * item.qty;

            total += subtotal;


            return `

            <div class="cart-item">

                <img
                    src="${p.image}"
                    alt="${p.title}"
                >

                <div class="cart-item-info">

                    <h4>
                        ${p.title}
                    </h4>

                    <p>
                        $${p.price.toLocaleString()}
                    </p>


                    <div class="qty">

                        <button
                            onclick="changeQty(${p.id},-1)"
                        >
                            −
                        </button>

                        <span>
                            ${item.qty}
                        </span>

                        <button
                            onclick="changeQty(${p.id},1)"
                        >
                            +
                        </button>

                        <button
                            class="remove"
                            onclick="removeFromCart(${p.id})"
                        >
                            Remove
                        </button>

                    </div>

                </div>

            </div>

            `;

        }).join("");


    cartTotal.textContent =
        "$" + total.toLocaleString();

}


/* =========================================================
   OPEN CART
========================================================= */

function openCart(){

    cartDrawer.classList.add("open");

    overlay.classList.add("show");

}


/* =========================================================
   CLOSE CART
========================================================= */

function closeCart(){

    cartDrawer.classList.remove("open");

    overlay.classList.remove("show");

}


document
.getElementById("openCart")
.addEventListener(
    "click",
    openCart
);


document
.getElementById("closeCart")
.addEventListener(
    "click",
    closeCart
);


overlay.addEventListener(
    "click",
    closeCart
);


/* =========================================================
   WISHLIST
========================================================= */

function toggleWishlist(id){

    if(wishlist.includes(id)){

        wishlist =
            wishlist.filter(
                x => x !== id
            );

        showToast(
            "Removed from wishlist"
        );

    }else{

        wishlist.push(id);

        showToast(
            "Added to wishlist"
        );

    }


    localStorage.setItem(
        "dpLuxuryWishlist",
        JSON.stringify(wishlist)
    );


    renderProducts();

}


/* =========================================================
   QUICK VIEW
========================================================= */

function openQuickView(id){

    const p =
        PRODUCTS.find(
            x => x.id === id
        );

    if(!p) return;

    currentModalProduct = p;


    document
    .getElementById("modalImage")
    .src = p.image;


    document
    .getElementById("modalImage")
    .alt = p.title;


    document
    .getElementById("modalTitle")
    .textContent = p.title;


    document
    .getElementById("modalCategory")
    .textContent = p.categoryName;


    document
    .getElementById("modalDescription")
    .textContent = p.description;


    document
    .getElementById("modalPrice")
    .innerHTML =
        `$${p.price.toLocaleString()}
        ${
            p.oldPrice
            ?
            `<span class="old-price">
                $${p.oldPrice.toLocaleString()}
            </span>`
            :
            ""
        }`;


    document
    .getElementById("quickModal")
    .classList.add("show");


    document
    .body
    .classList.add("modal-open");

}


/* =========================================================
   CLOSE MODAL
========================================================= */

function closeModal(){

    document
    .getElementById("quickModal")
    .classList.remove("show");

    document
    .body
    .classList.remove("modal-open");

}


document
.getElementById("closeModal")
.addEventListener(
    "click",
    closeModal
);


document
.getElementById("quickModal")
.addEventListener(
    "click",
    e => {

        if(e.target.id === "quickModal"){

            closeModal();

        }

    }
);


/* =========================================================
   MODAL ADD
========================================================= */

document
.getElementById("modalAdd")
.addEventListener(
    "click",
    () => {

        if(currentModalProduct){

            addToCart(
                currentModalProduct.id
            );

            closeModal();

            openCart();

        }

    }
);


/* =========================================================
   SEARCH
========================================================= */

document
.getElementById("searchButton")
.addEventListener(
    "click",
    () => {

        const query =
            prompt(
                "Search DP Luxury Shop"
            );

        if(!query) return;

        const q =
            query.toLowerCase().trim();


        const results =
            PRODUCTS.filter(p =>

                p.title
                .toLowerCase()
                .includes(q)

                ||

                p.categoryName
                .toLowerCase()
                .includes(q)

                ||

                p.category
                .toLowerCase()
                .includes(q)

            );


        if(results.length){

            productsGrid.innerHTML =
                results
                .map(productCard)
                .join("");


            document
            .getElementById("products")
            .scrollIntoView({
                behavior:"smooth"
            });


            showToast(
                `${results.length} product(s) found`
            );

        }else{

            showToast(
                "No products found"
            );

        }

    }
);


/* =========================================================
   ACCOUNT
========================================================= */

document
.getElementById("accountButton")
.addEventListener(
    "click",
    () => {

        showToast(
            "Customer account coming soon"
        );

    }
);


/* =========================================================
   NEWSLETTER
========================================================= */

document
.getElementById("newsletterForm")
.addEventListener(
    "submit",
    e => {

        e.preventDefault();

        const input =
            document.getElementById("email");


        if(input.value){

            input.value = "";

            showToast(
                "Welcome to the DP Inner Circle"
            );

        }

    }
);


/* =========================================================
   CHECKOUT
========================================================= */

document
.getElementById("checkout")
.addEventListener(
    "click",
    () => {

        if(cart.length === 0){

            showToast(
                "Your bag is empty"
            );

            return;

        }


        showToast(
            "DP Checkout demo — connect your payment gateway here"
        );

    }
);


/* =========================================================
   EXCLUSIVE DEAL
========================================================= */

document
.getElementById("dealButton")
.addEventListener(
    "click",
    () => {

        addToCart(2);

        openCart();

    }
);


/* =========================================================
   COUNTDOWN
========================================================= */

const endTime =
    Date.now()
    +
    (24 * 60 * 60 * 1000)
    +
    (36 * 60 * 1000);


function countdown(){

    const difference =
        endTime - Date.now();


    if(difference <= 0){

        return;

    }


    const days =
        Math.floor(
            difference / 86400000
        );


    const hours =
        Math.floor(
            (difference % 86400000)
            /
            3600000
        );


    const minutes =
        Math.floor(
            (difference % 3600000)
            /
            60000
        );


    const seconds =
        Math.floor(
            (difference % 60000)
            /
            1000
        );


    document
    .getElementById("days")
    .textContent =
        String(days)
        .padStart(2,"0");


    document
    .getElementById("hours")
    .textContent =
        String(hours)
        .padStart(2,"0");


    document
    .getElementById("minutes")
    .textContent =
        String(minutes)
        .padStart(2,"0");


    document
    .getElementById("seconds")
    .textContent =
        String(seconds)
        .padStart(2,"0");

}


countdown();

setInterval(
    countdown,
    1000
);


/* =========================================================
   MOBILE MENU
========================================================= */

document
.getElementById("mobileMenu")
.addEventListener(
    "click",
    () => {

        const links =
            document.querySelector(
                ".nav-links"
            );


        if(links.style.display === "flex"){

            links.style.display =
                "none";

        }else{

            links.style.display =
                "flex";

            links.style.position =
                "absolute";

            links.style.top =
                "70px";

            links.style.left =
                "0";

            links.style.right =
                "0";

            links.style.padding =
                "20px";

            links.style.background =
                "#0b0b0b";

            links.style.flexDirection =
                "column";

            links.style.borderBottom =
                "1px solid #222";

        }

    }
);


/* =========================================================
   TOAST
========================================================= */

let toastTimer;


function showToast(message){

    toast.textContent =
        message;

    toast.classList.add(
        "show"
    );


    clearTimeout(
        toastTimer
    );


    toastTimer =
        setTimeout(
            () => {

                toast.classList.remove(
                    "show"
                );

            },
            2500
        );

}


/* =========================================================
   HELPERS
========================================================= */

function scrollToProducts(){

    document
    .getElementById("products")
    .scrollIntoView({
        behavior:"smooth"
    });

}


/* =========================================================
   YEAR
========================================================= */

document
.getElementById("year")
.textContent =
    new Date().getFullYear();


/* =========================================================
   INITIALIZE
========================================================= */

renderCollections();

renderProducts();

renderCart();

</script>

</body>
</html>
give me colour full website
