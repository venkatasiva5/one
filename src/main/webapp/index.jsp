<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>DP — Luxury E-Commerce</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@500;600;700&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================================================
   DP LUXURY E-COMMERCE
   ========================================================= */

:root{
    --black:#07050d;
    --black2:#0e0a18;

    --panel:#151020;
    --panel2:#1d152b;

    --gold:#e7b85c;
    --gold2:#ffe3a0;

    --purple:#9b5cff;
    --purple2:#c69cff;

    --pink:#ff4f9a;
    --cyan:#4ddcff;

    --cream:#fff8ed;
    --white:#ffffff;

    --muted:#aaa1b5;
    --muted2:#71697c;

    --green:#55e6a5;
    --red:#ff6078;

    --border:rgba(231,184,92,.22);

    --radius:20px;
    --max:1250px;
}

*{
    box-sizing:border-box;
}

html{
    scroll-behavior:smooth;
}

body{
    margin:0;
    background:
        radial-gradient(circle at 10% 10%,rgba(155,92,255,.08),transparent 30%),
        radial-gradient(circle at 90% 30%,rgba(255,79,154,.06),transparent 25%),
        var(--black);

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


/* =========================================================
   CONTAINER
   ========================================================= */

.container{
    width:min(var(--max),calc(100% - 40px));
    margin:auto;
}


/* =========================================================
   HEADER
   ========================================================= */

header{
    position:fixed;
    top:0;
    left:0;
    right:0;

    z-index:1000;

    background:rgba(7,5,13,.78);

    backdrop-filter:blur(22px);

    border-bottom:1px solid rgba(255,255,255,.07);
}

.nav{
    height:82px;

    display:flex;
    align-items:center;
    justify-content:space-between;

    gap:25px;
}


/* LOGO */

.logo{
    font-family:"Playfair Display",serif;

    font-size:32px;

    font-weight:700;

    letter-spacing:4px;

    white-space:nowrap;

    background:
        linear-gradient(
            90deg,
            var(--gold),
            var(--gold2),
            var(--pink),
            var(--purple2)
        );

    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;

    filter:drop-shadow(0 0 15px rgba(231,184,92,.18));
}

.logo span{
    color:var(--pink);
}


/* NAV LINKS */

.nav-links{
    display:flex;
    align-items:center;
    gap:30px;
}

.nav-links a{
    color:#cfc8d7;

    font-size:12px;

    text-transform:uppercase;

    letter-spacing:1.5px;

    transition:.3s;
}

.nav-links a:hover{
    color:var(--gold2);

    text-shadow:
        0 0 15px rgba(231,184,92,.5);
}


/* NAV RIGHT */

.nav-right{
    display:flex;
    align-items:center;
    gap:12px;
}

.nav-icon{
    width:42px;
    height:42px;

    border:1px solid rgba(255,255,255,.1);

    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.07),
            rgba(255,255,255,.025)
        );

    color:#eee;

    border-radius:50%;

    display:grid;
    place-items:center;

    transition:.3s;
}

.nav-icon:hover{
    color:var(--gold2);

    border-color:var(--gold);

    transform:translateY(-3px);

    box-shadow:
        0 0 20px rgba(231,184,92,.2);
}

.cart-button{
    position:relative;
}

.cart-badge{
    position:absolute;

    top:-5px;
    right:-4px;

    min-width:20px;
    height:20px;

    padding:0 5px;

    background:
        linear-gradient(
            135deg,
            var(--gold2),
            var(--gold),
            var(--pink)
        );

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


/* =========================================================
   HERO
   ========================================================= */

.hero{
    min-height:820px;

    padding-top:82px;

    display:flex;
    align-items:center;

    position:relative;

    overflow:hidden;

    background:
        linear-gradient(
            90deg,
            rgba(5,3,10,.96) 0%,
            rgba(8,4,18,.84) 38%,
            rgba(12,5,25,.35) 75%,
            rgba(5,3,10,.15) 100%
        ),

        url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=2000&q=90")
        center/cover;
}

.hero::before{
    content:"";

    position:absolute;

    width:500px;
    height:500px;

    border-radius:50%;

    background:
        radial-gradient(
            circle,
            rgba(155,92,255,.35),
            transparent 65%
        );

    left:-150px;
    top:100px;

    filter:blur(40px);
}

.hero::after{
    content:"";

    position:absolute;

    inset:auto 0 0;

    height:220px;

    background:
        linear-gradient(
            transparent,
            var(--black)
        );
}

.hero-content{
    position:relative;

    z-index:2;

    max-width:720px;
}

.eyebrow{
    color:var(--gold2);

    text-transform:uppercase;

    letter-spacing:5px;

    font-size:11px;

    font-weight:800;

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
    background:
        linear-gradient(
            90deg,
            var(--gold2),
            var(--pink),
            var(--purple2)
        );

    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;

    font-style:italic;
}

.hero p{
    max-width:570px;

    color:#d1cbd8;

    font-size:16px;

    margin-bottom:35px;
}

.hero-actions{
    display:flex;

    gap:15px;

    flex-wrap:wrap;
}


/* BUTTONS */

.btn{
    border:0;

    padding:15px 25px;

    border-radius:50px;

    font-weight:800;

    transition:.3s;
}

.btn-gold{
    background:
        linear-gradient(
            135deg,
            var(--gold2),
            var(--gold),
            #ffcf70
        );

    color:#090709;

    box-shadow:
        0 12px 35px rgba(231,184,92,.18);
}

.btn-gold:hover{
    transform:translateY(-3px) scale(1.02);

    box-shadow:
        0 18px 45px rgba(231,184,92,.35);
}

.btn-outline{
    background:rgba(255,255,255,.04);

    border:1px solid rgba(255,255,255,.2);

    color:#fff;
}

.btn-outline:hover{
    border-color:var(--purple);

    color:var(--purple2);

    box-shadow:
        0 0 25px rgba(155,92,255,.2);
}


/* HERO STATS */

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

    color:var(--gold2);
}

.stat span{
    font-size:10px;

    color:#aaa;

    text-transform:uppercase;

    letter-spacing:2px;
}


/* =========================================================
   SECTION
   ========================================================= */

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
    color:var(--gold2);

    font-size:10px;

    letter-spacing:4px;

    text-transform:uppercase;

    font-weight:800;
}

.section h2{
    font-family:"Playfair Display",serif;

    font-size:45px;

    font-weight:500;

    margin:8px 0 0;

    background:
        linear-gradient(
            90deg,
            #fff,
            var(--cream),
            var(--gold2)
        );

    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

.section-description{
    color:#8e8797;

    max-width:420px;
}


/* =========================================================
   CATEGORIES
   ========================================================= */

.categories{
    display:grid;

    grid-template-columns:repeat(6,1fr);

    gap:14px;
}

.category{
    position:relative;

    height:180px;

    overflow:hidden;

    border-radius:18px;

    background:#111;

    border:1px solid rgba(255,255,255,.07);

    cursor:pointer;

    transition:.35s;
}

.category:hover{
    transform:translateY(-6px);

    border-color:var(--gold);

    box-shadow:
        0 20px 45px rgba(0,0,0,.45),
        0 0 25px rgba(231,184,92,.1);
}

.category img{
    width:100%;
    height:100%;

    object-fit:cover;

    opacity:.5;

    transition:.5s;
}

.category:hover img{
    transform:scale(1.1);

    opacity:.75;
}

.category::after{
    content:"";

    position:absolute;

    inset:0;

    background:
        linear-gradient(
            transparent 25%,
            rgba(0,0,0,.9)
        );
}

.category-content{
    position:absolute;

    z-index:2;

    left:18px;

    bottom:15px;
}

.category i{
    color:var(--gold2);

    font-size:18px;
}

.category h3{
    margin:5px 0 0;

    font-family:"Playfair Display",serif;

    font-size:18px;
}


/* =========================================================
   FILTERS
   ========================================================= */

.filters{
    display:flex;

    gap:9px;

    flex-wrap:wrap;
}

.filter{
    padding:9px 16px;

    border:1px solid rgba(255,255,255,.1);

    color:#999;

    background:rgba(255,255,255,.025);

    border-radius:30px;

    font-size:12px;

    transition:.3s;
}

.filter.active,
.filter:hover{
    color:#000;

    background:
        linear-gradient(
            135deg,
            var(--gold2),
            var(--gold)
        );

    border-color:var(--gold);

    box-shadow:
        0 0 20px rgba(231,184,92,.12);
}


/* =========================================================
   PRODUCTS
   ========================================================= */

.products{
    display:grid;

    grid-template-columns:repeat(4,1fr);

    gap:20px;
}

.product{
    background:
        linear-gradient(
            145deg,
            #191326,
            #0e0a15
        );

    border:1px solid rgba(255,255,255,.07);

    border-radius:20px;

    overflow:hidden;

    transition:.4s;
}

.product:hover{
    transform:translateY(-8px);

    border-color:rgba(231,184,92,.35);

    box-shadow:
        0 25px 60px rgba(0,0,0,.5),
        0 0 35px rgba(155,92,255,.07);
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

    background:
        linear-gradient(
            135deg,
            var(--gold2),
            var(--gold)
        );

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

    border:1px solid rgba(255,255,255,.12);

    background:rgba(0,0,0,.6);

    color:#fff;

    display:grid;
    place-items:center;

    z-index:3;

    transition:.3s;
}

.wishlist:hover{
    border-color:var(--pink);

    transform:scale(1.1);
}

.wishlist.active{
    color:var(--pink);

    box-shadow:
        0 0 18px rgba(255,79,154,.25);
}

.quick-view{
    position:absolute;

    left:15px;
    right:15px;

    bottom:-55px;

    background:
        linear-gradient(
            135deg,
            #fff,
            #f5e9d3
        );

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
    color:var(--gold2);

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
    color:var(--gold2);

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

    font-weight:800;

    color:#fff;
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

    color:var(--gold2);

    background:rgba(255,255,255,.02);

    border-radius:50%;

    transition:.3s;
}

.add-cart:hover{
    background:
        linear-gradient(
            135deg,
            var(--gold2),
            var(--gold)
        );

    color:#000;

    transform:rotate(10deg) scale(1.08);
}


/* =========================================================
   FEATURE
   ========================================================= */

.feature{
    display:grid;

    grid-template-columns:1fr 1fr;

    min-height:480px;

    overflow:hidden;

    border-radius:25px;

    background:
        linear-gradient(
            145deg,
            #1a1129,
            #0f0a18
        );

    border:1px solid rgba(231,184,92,.18);

    box-shadow:
        0 25px 80px rgba(0,0,0,.35);
}

.feature-image{
    min-height:480px;

    background:
        linear-gradient(
            135deg,
            rgba(155,92,255,.15),
            transparent
        ),

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

    background:
        linear-gradient(
            90deg,
            #fff,
            var(--gold2)
        );

    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

.feature-content p{
    color:#999;
}

.price-large{
    color:var(--gold2);

    font-size:32px;

    font-weight:800;

    margin:20px 0;
}


/* COUNTDOWN */

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

    background:
        linear-gradient(
            145deg,
            #15101f,
            #08070b
        );

    border:1px solid rgba(231,184,92,.18);

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


/* =========================================================
   TRUST
   ========================================================= */

.trust{
    display:grid;

    grid-template-columns:repeat(4,1fr);

    gap:15px;
}

.trust-card{
    padding:28px;

    background:
        linear-gradient(
            145deg,
            #171123,
            #0e0a15
        );

    border:1px solid rgba(255,255,255,.07);

    border-radius:18px;

    transition:.3s;
}

.trust-card:hover{
    transform:translateY(-5px);

    border-color:var(--gold);

    box-shadow:
        0 15px 40px rgba(0,0,0,.3);
}

.trust-card i{
    color:var(--gold2);

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


/* =========================================================
   NEWSLETTER
   ========================================================= */

.newsletter{
    text-align:center;

    padding:85px 30px;

    border:1px solid rgba(231,184,92,.25);

    border-radius:25px;

    background:
        radial-gradient(
            circle at 50% 0,
            rgba(231,184,92,.18),
            transparent 35%
        ),

        radial-gradient(
            circle at 20% 100%,
            rgba(155,92,255,.12),
            transparent 35%
        ),

        radial-gradient(
            circle at 80% 100%,
            rgba(255,79,154,.1),
            transparent 35%
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


/* =========================================================
   FOOTER
   ========================================================= */

footer{
    border-top:1px solid rgba(255,255,255,.07);

    padding:65px 0 25px;

    background:
        linear-gradient(
            180deg,
            #08060d,
            #050409
        );
}

.footer-grid{
    display:grid;

    grid-template-columns:2fr 1fr 1fr 1fr;

    gap:50px;
}

.footer-brand{
    font-family:"Playfair Display",serif;

    font-size:32px;

    font-weight:700;

    background:
        linear-gradient(
            90deg,
            var(--gold),
            var(--pink),
            var(--purple2)
        );

    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

.footer-brand span{
    color:var(--pink);
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

    transition:.3s;
}

.footer-col a:hover{
    color:var(--gold2);

    transform:translateX(3px);
}


/* SOCIAL */

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

    transition:.3s;
}

.social:hover{
    color:#fff;

    border-color:var(--purple);

    background:
        linear-gradient(
            135deg,
            var(--purple),
            var(--pink)
        );

    transform:translateY(-3px);
}

.copyright{
    border-top:1px solid rgba(255,255,255,.06);

    margin-top:50px;

    padding-top:22px;

    text-align:center;

    color:#555;

    font-size:11px;
}


/* =========================================================
   CART DRAWER
   ========================================================= */

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

    background:
        linear-gradient(
            180deg,
            #171123,
            #0c0911
        );

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

.close:hover{
    color:var(--pink);
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
    color:var(--gold2);

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

    background:#19151f;

    color:#fff;
}

.qty button:hover{
    border-color:var(--gold);

    color:var(--gold);
}

.remove{
    background:none;

    border:0;

    color:#666;
}

.remove:hover{
    color:var(--red);
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
    color:var(--gold2);
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


/* =========================================================
   MODAL
   ========================================================= */

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

    background:
        linear-gradient(
            145deg,
            #1a1226,
            #0e0a13
        );

    border:1px solid var(--border);

    border-radius:25px;

    display:grid;

    grid-template-columns:1fr 1fr;

    position:relative;

    box-shadow:
        0 30px 100px rgba(0,0,0,.7);
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

.modal-close:hover{
    color:var(--pink);

    border-color:var(--pink);
}


/* =========================================================
   TOAST
   ========================================================= */

.toast{
    position:fixed;

    bottom:25px;
    left:50%;

    transform:translate(-50%,100px);

    background:
        linear-gradient(
            135deg,
            #fff7e8,
            #f5d994
        );

    color:#111;

    padding:13px 20px;

    border-radius:50px;

    z-index:5000;

    font-size:13px;

    font-weight:800;

    opacity:0;

    transition:.4s;

    box-shadow:
        0 15px 40px rgba(0,0,0,.35);
}

.toast.show{
    opacity:1;

    transform:translate(-50%,0);
}


/* =========================================================
   RESPONSIVE
   ========================================================= */

@media(max-width:1050px){

    .categories{
        grid-template-columns:repeat(3,1fr);
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .nav-links{
        display:none;
    }

    .mobile-menu-btn{
        display:grid;
    }

    .hero-stat{
        display:none;
    }
}


@media(max-width:700px){

    .container{
        width:min(100% - 28px,var(--max));
    }

    .nav{
        height:70px;
    }

    .logo{
        font-size:25px;
    }

    .nav-right .nav-icon:first-child{
        display:none;
    }

    .hero{
        min-height:700px;

        padding-top:70px;

        background-position:center;
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

    .categories{
        grid-template-columns:repeat(2,1fr);
    }

    .category{
        height:145px;
    }

    .products{
        grid-template-columns:1fr;
    }

    .product-image{
        height:330px;
    }

    .feature{
        grid-template-columns:1fr;
    }

    .feature-image{
        min-height:300px;
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

    .categories{
        grid-template-columns:1fr 1fr;
    }

    .category{
        height:130px;
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

    .hero h1{
        font-size:48px;
    }
}

</style>
</head>


<body>


<!-- =========================================================
     HEADER
     ========================================================= -->

<header>

<div class="container nav">

    <a href="#" class="logo">
        DP<span>.</span>
    </a>


    <nav class="nav-links">

        <a href="#home">Home</a>

        <a href="#categories">
            Collections
        </a>

        <a href="#products">
            Shop
        </a>

        <a href="#deals">
            Exclusive
        </a>

        <a href="#about">
            About
        </a>

    </nav>


    <div class="nav-right">

        <button
            class="nav-icon"
            id="searchButton"
            title="Search">

            <i class="fa-solid fa-magnifying-glass"></i>

        </button>


        <button
            class="nav-icon"
            title="Account"
            onclick="showToast('Account feature coming soon')">

            <i class="fa-regular fa-user"></i>

        </button>


        <button
            class="nav-icon cart-button"
            id="openCart"
            title="Shopping Bag">

            <i class="fa-solid fa-bag-shopping"></i>

            <span
                class="cart-badge"
                id="cartCount">
                0
            </span>

        </button>


        <button
            class="nav-icon mobile-menu-btn"
            id="mobileMenu">

            <i class="fa-solid fa-bars"></i>

        </button>

    </div>

</div>

</header>



<!-- =========================================================
     MAIN
     ========================================================= -->

<main>


<!-- HERO -->

<section class="hero" id="home">

<div class="container">

<div class="hero-content">

    <div class="eyebrow">
        The New Standard of Luxury
    </div>


    <h1>

        Curated for<br>

        <span>Those Who</span><br>

        Demand More.

    </h1>


    <p>

        Discover an exceptional collection of technology,
        fashion and lifestyle essentials selected for
        modern living.

    </p>


    <div class="hero-actions">

        <button
            class="btn btn-gold"
            onclick="scrollToProducts()">

            Explore Collection

            <i class="fa-solid fa-arrow-right"></i>

        </button>


        <button
            class="btn btn-outline"
            onclick="document.getElementById('deals').scrollIntoView({behavior:'smooth'})">

            View Exclusive

        </button>

    </div>

</div>

</div>


<div class="hero-stat">

    <div class="stat">

        <strong>12K+</strong>

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



<!-- =========================================================
     CATEGORIES
     ========================================================= -->

<section class="section" id="categories">

<div class="container">

<div class="section-head">

<div>

    <div class="section-label">
        Explore
    </div>

    <h2>
        Shop by Collection
    </h2>

</div>


<p class="section-description">

    Carefully selected categories designed
    around your lifestyle.

</p>

</div>


<div
    class="categories"
    id="categoriesGrid">
</div>

</div>

</section>



<!-- =========================================================
     PRODUCTS
     ========================================================= -->

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
        data-filter="all">

        All

    </button>


    <button
        class="filter"
        data-filter="tech">

        Technology

    </button>


    <button
        class="filter"
        data-filter="fashion">

        Fashion

    </button>


    <button
        class="filter"
        data-filter="lifestyle">

        Lifestyle

    </button>

</div>

</div>


<div
    class="products"
    id="productsGrid">
</div>


</div>

</section>



<!-- =========================================================
     FEATURE DEAL
     ========================================================= -->

<section
    class="section"
    id="deals">

<div class="container">

<div class="feature">


<div class="feature-image"></div>


<div class="feature-content">

    <div class="section-label">
        Limited Edition
    </div>


    <h2>
        MacBook<br>
        Air M2.
    </h2>


    <p>

        Extraordinary performance meets
        impossibly thin design. Experience
        powerful performance in a premium
        design.

    </p>


    <div class="price-large">

        $999

        <span class="old-price">
            $1,199
        </span>

    </div>


    <div class="countdown">

        <div class="time">

            <div>

                <strong id="days">
                    01
                </strong>

                <span>
                    Days
                </span>

            </div>

        </div>


        <div class="time">

            <div>

                <strong id="hours">
                    12
                </strong>

                <span>
                    Hours
                </span>

            </div>

        </div>


        <div class="time">

            <div>

                <strong id="minutes">
                    00
                </strong>

                <span>
                    Min
                </span>

            </div>

        </div>


        <div class="time">

            <div>

                <strong id="seconds">
                    00
                </strong>

                <span>
                    Sec
                </span>

            </div>

        </div>

    </div>


    <button
        class="btn btn-gold"
        id="dealButton">

        Secure This Deal

        <i class="fa-solid fa-arrow-right"></i>

    </button>

</div>


</div>

</div>

</section>



<!-- =========================================================
     TRUST
     ========================================================= -->

<section
    class="section"
    id="about">

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
        for quality and design.
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
        Your transactions and personal
        information stay protected.
    </p>

</div>


<div class="trust-card">

    <i class="fa-solid fa-headset"></i>

    <h3>
        Personal Concierge
    </h3>

    <p>
        Our team is available whenever
        you need assistance.
    </p>

</div>


</div>

</div>

</section>



<!-- =========================================================
     NEWSLETTER
     ========================================================= -->

<section class="section">

<div class="container">

<div class="newsletter">

    <div class="section-label">
        Private Access
    </div>


    <h2>
        Enter the Inner Circle.
    </h2>


    <p>

        Receive early access to exclusive
        collections, private offers and
        new arrivals.

    </p>


    <form
        class="newsletter-form"
        id="newsletterForm">

        <input
            type="email"
            id="email"
            placeholder="Your email address"
            required>


        <button
            class="btn btn-gold">

            Join DP

        </button>

    </form>

</div>

</div>

</section>

</main>



<!-- =========================================================
     FOOTER
     ========================================================= -->

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
        font-size:13px">

        A new generation of luxury commerce.
        Exceptional products, exceptional
        experiences.

    </p>


    <div class="socials">

        <a
            href="#"
            class="social"
            onclick="showToast('Instagram coming soon');return false;">

            <i class="fa-brands fa-instagram"></i>

        </a>


        <a
            href="#"
            class="social"
            onclick="showToast('X coming soon');return false;">

            <i class="fa-brands fa-x-twitter"></i>

        </a>


        <a
            href="#"
            class="social"
            onclick="showToast('Facebook coming soon');return false;">

            <i class="fa-brands fa-facebook-f"></i>

        </a>


        <a
            href="#"
            class="social"
            onclick="showToast('Pinterest coming soon');return false;">

            <i class="fa-brands fa-pinterest-p"></i>

        </a>

    </div>

</div>



<div class="footer-col">

    <h4>
        Explore
    </h4>

    <a href="#home">
        Home
    </a>

    <a href="#products">
        Shop
    </a>

    <a href="#categories">
        Collections
    </a>

    <a href="#deals">
        Exclusive
    </a>

</div>



<div class="footer-col">

    <h4>
        Services
    </h4>

    <a
        href="#"
        onclick="showToast('Shipping information coming soon');return false;">

        Shipping

    </a>

    <a
        href="#"
        onclick="showToast('Returns information coming soon');return false;">

        Returns

    </a>

    <a
        href="#"
        onclick="showToast('Concierge service coming soon');return false;">

        Concierge

    </a>

    <a
        href="#"
        onclick="showToast('Contact page coming soon');return false;">

        Contact

    </a>

</div>



<div class="footer-col">

    <h4>
        Company
    </h4>

    <a href="#about">
        About DP
    </a>

    <a
        href="#"
        onclick="showToast('Careers coming soon');return false;">

        Careers

    </a>

    <a
        href="#"
        onclick="showToast('Privacy policy coming soon');return false;">

        Privacy

    </a>

    <a
        href="#"
        onclick="showToast('Terms coming soon');return false;">

        Terms

    </a>

</div>


</div>


<div class="copyright">

    © <span id="year"></span>
    DP. ALL RIGHTS RESERVED.

</div>


</div>

</footer>



<!-- =========================================================
     CART
     ========================================================= -->

<div
    class="overlay"
    id="overlay">
</div>


<aside
    class="cart-drawer"
    id="cartDrawer">


<div class="cart-header">

    <h2>
        Your Bag
    </h2>


    <button
        class="close"
        id="closeCart">

        <i class="fa-solid fa-xmark"></i>

    </button>

</div>


<div
    class="cart-items"
    id="cartItems">
</div>


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
    id="checkout">

    Proceed to Checkout

</button>


</div>

</aside>



<!-- =========================================================
     QUICK VIEW MODAL
     ========================================================= -->

<div
    class="modal"
    id="quickModal">


<div class="modal-card">


<button
    class="modal-close"
    id="closeModal">

    <i class="fa-solid fa-xmark"></i>

</button>


<div class="modal-image">

    <img
        id="modalImage"
        src=""
        alt="">

</div>


<div class="modal-content">


<div
    class="product-category"
    id="modalCategory">
</div>


<h2 id="modalTitle"></h2>


<div class="rating">

    ★★★★★

    <span>
        Premium selection
    </span>

</div>


<p
    id="modalDescription"
    style="color:#888">
</p>


<div
    class="price-large"
    id="modalPrice">
</div>


<button
    class="btn btn-gold"
    id="modalAdd">

    Add to Bag

    <i class="fa-solid fa-bag-shopping"></i>

</button>


</div>

</div>

</div>



<!-- TOAST -->

<div
    class="toast"
    id="toast">
</div>



<script>

/* =========================================================
   PRODUCTS
   ========================================================= */

const PRODUCTS = [

{
    id:1,

    title:"iPhone 16 Pro Max",

    category:"tech",

    categoryName:"Technology",

    price:1299,

    oldPrice:1399,

    rating:5,

    reviews:328,

    badge:"NEW",

    image:
    "https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=800&q=85",

    description:
    "Titanium design, professional camera system and extraordinary performance."
},


{
    id:2,

    title:"MacBook Pro 14",

    category:"tech",

    categoryName:"Technology",

    price:1999,

    rating:5,

    reviews:182,

    badge:"BESTSELLER",

    image:
    "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=85",

    description:
    "Powerful performance in an elegant professional notebook."
},


{
    id:3,

    title:"Chronograph Classic",

    category:"fashion",

    categoryName:"Fashion",

    price:489,

    oldPrice:599,

    rating:5,

    reviews:91,

    badge:"-18%",

    image:
    "https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=800&q=85",

    description:
    "A timeless chronograph designed for refined everyday style."
},


{
    id:4,

    title:"Leather Executive Bag",

    category:"fashion",

    categoryName:"Fashion",

    price:299,

    rating:4,

    reviews:74,

    image:
    "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=800&q=85",

    description:
    "Premium leather construction with sophisticated executive styling."
},


{
    id:5,

    title:"Studio Headphones",

    category:"tech",

    categoryName:"Technology",

    price:399,

    oldPrice:449,

    rating:5,

    reviews:245,

    badge:"POPULAR",

    image:
    "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=800&q=85",

    description:
    "Immersive high-fidelity sound with luxurious comfort."
},


{
    id:6,

    title:"Signature Fragrance",

    category:"lifestyle",

    categoryName:"Lifestyle",

    price:159,

    rating:5,

    reviews:117,

    image:
    "https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=800&q=85",

    description:
    "An elegant signature fragrance created for unforgettable evenings."
},


{
    id:7,

    title:"Minimal Sneakers",

    category:"fashion",

    categoryName:"Fashion",

    price:179,

    rating:4,

    reviews:83,

    image:
    "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=85",

    description:
    "Clean contemporary design with premium comfort."
},


{
    id:8,

    title:"Smart Watch Ultra",

    category:"tech",

    categoryName:"Technology",

    price:549,

    oldPrice:649,

    rating:5,

    reviews:203,

    badge:"LIMITED",

    image:
    "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=800&q=85",

    description:
    "Advanced technology wrapped in an iconic premium silhouette."
}

];


/* =========================================================
   CATEGORIES
   ========================================================= */

const CATEGORIES = [

{
    name:"Technology",

    filter:"tech",

    icon:"fa-microchip",

    image:
    "https://images.unsplash.com/photo-1468495244123-6c6c332eeece?auto=format&fit=crop&w=700&q=80"
},


{
    name:"Fashion",

    filter:"fashion",

    icon:"fa-shirt",

    image:
    "https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=700&q=80"
},


{
    name:"Watches",

    filter:"fashion",

    icon:"fa-clock",

    image:
    "https://images.unsplash.com/photo-1523170335258-f5ed11844a49?auto=format&fit=crop&w=700&q=80"
},


{
    name:"Audio",

    filter:"tech",

    icon:"fa-headphones",

    image:
    "https://images.unsplash.com/photo-1484704849700-f032a568e944?auto=format&fit=crop&w=700&q=80"
},


{
    name:"Lifestyle",

    filter:"lifestyle",

    icon:"fa-wand-magic-sparkles",

    image:
    "https://images.unsplash.com/photo-1547887538-e3a2f32cb1cc?auto=format&fit=crop&w=700&q=80"
},


{
    name:"Footwear",

    filter:"fashion",

    icon:"fa-shoe-prints",

    image:
    "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80"
}

];


/* =========================================================
   STATE
   ========================================================= */

let cart =
    JSON.parse(localStorage.getItem("dpCart")) || [];

let wishlist =
    JSON.parse(localStorage.getItem("dpWishlist")) || [];

let activeFilter = "all";

let currentModalProduct = null;


/* =========================================================
   DOM
   ========================================================= */

const productsGrid =
    document.getElementById("productsGrid");

const categoriesGrid =
    document.getElementById("categoriesGrid");

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
   CATEGORIES
   ========================================================= */

function renderCategories(){

    categoriesGrid.innerHTML =
        CATEGORIES.map(cat => `

        <div
            class="category"
            onclick="filterCategory('${cat.filter}')">

            <img
                src="${cat.image}"
                alt="${cat.name}">

            <div class="category-content">

                <i class="fa-solid ${cat.icon}"></i>

                <h3>
                    ${cat.name}
                </h3>

            </div>

        </div>

        `).join("");
}


/* =========================================================
   PRODUCTS
   ========================================================= */

function productHTML(p){

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
                onclick="toggleWishlist(${p.id})">

                <i class="${
                    liked
                    ?
                    "fa-solid"
                    :
                    "fa-regular"
                } fa-heart"></i>

            </button>


            <img
                src="${p.image}"
                alt="${p.title}">


            <button
                class="quick-view"
                onclick="openQuickView(${p.id})">

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
                    title="Add to bag">

                    <i class="fa-solid fa-plus"></i>

                </button>

            </div>

        </div>

    </article>

    `;
}


function renderProducts(){

    let list =
        activeFilter === "all"
        ?
        PRODUCTS
        :
        PRODUCTS.filter(
            p => p.category === activeFilter
        );

    productsGrid.innerHTML =
        list.map(productHTML).join("");
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
    .forEach(b => {

        b.classList.toggle(
            "active",
            b.dataset.filter === category
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
   CART
   ========================================================= */

function saveCart(){

    localStorage.setItem(
        "dpCart",
        JSON.stringify(cart)
    );

}


function addToCart(id){

    const product =
        PRODUCTS.find(
            p => p.id === id
        );

    if(!product) return;


    const existing =
        cart.find(
            item => item
