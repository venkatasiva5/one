:root{
    --black:#09061a;
    --black2:#100b25;
    --panel:#17102e;
    --panel2:#211641;

    --purple:#8b5cf6;
    --purple2:#c084fc;
    --pink:#ec4899;
    --pink2:#f472b6;
    --blue:#3b82f6;
    --cyan:#22d3ee;
    --orange:#fb923c;
    --yellow:#facc15;

    --gold:#facc15;
    --gold2:#fde68a;

    --cream:#fff7ed;
    --white:#ffffff;
    --muted:#aaa4c0;

    --border:rgba(192,132,252,.25);
    --radius:22px;
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
    color:var(--cream);
    font-family:Inter,Arial,sans-serif;
    line-height:1.5;

    background:
        radial-gradient(
            circle at 10% 10%,
            rgba(139,92,246,.18),
            transparent 30%
        ),
        radial-gradient(
            circle at 90% 20%,
            rgba(236,72,153,.14),
            transparent 30%
        ),
        radial-gradient(
            circle at 50% 100%,
            rgba(34,211,238,.12),
            transparent 35%
        ),
        #09061a;
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

    background:rgba(9,6,26,.78);
    backdrop-filter:blur(22px);

    border-bottom:
        1px solid
        rgba(192,132,252,.18);

    box-shadow:
        0 10px 40px rgba(0,0,0,.25);
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

    background:
        linear-gradient(
            90deg,
            #facc15,
            #f472b6,
            #a78bfa,
            #22d3ee
        );

    -webkit-background-clip:text;
    background-clip:text;
    color:transparent;
}

.logo span{
    color:#facc15;
}

.nav-links{
    display:flex;
    align-items:center;
    gap:26px;
}

.nav-links a{
    color:#d8d2e8;
    font-size:12px;
    text-transform:uppercase;
    letter-spacing:1px;
    transition:.3s;
}

.nav-links a:hover{
    color:#f472b6;
    text-shadow:
        0 0 15px rgba(236,72,153,.7);
}

.nav-right{
    display:flex;
    align-items:center;
    gap:10px;
}

.nav-icon{
    width:42px;
    height:42px;

    border:
        1px solid
        rgba(192,132,252,.25);

    background:
        linear-gradient(
            135deg,
            rgba(139,92,246,.16),
            rgba(236,72,153,.08)
        );

    color:#eee;
    border-radius:50%;

    display:grid;
    place-items:center;

    transition:.3s;
}

.nav-icon:hover{
    color:#fff;

    border-color:#f472b6;

    background:
        linear-gradient(
            135deg,
            #8b5cf6,
            #ec4899
        );

    transform:translateY(-3px);

    box-shadow:
        0 8px 25px
        rgba(236,72,153,.35);
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

    background:
        linear-gradient(
            135deg,
            #facc15,
            #fb923c
        );

    color:#210b00;

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
            rgba(9,6,26,.94) 0%,
            rgba(30,15,70,.75) 42%,
            rgba(236,72,153,.22) 75%,
            rgba(34,211,238,.08) 100%
        ),
        url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=2000&q=90")
        center/cover;
}

.hero::before{
    content:"";

    position:absolute;
    width:500px;
    height:500px;

    right:-180px;
    top:100px;

    background:
        radial-gradient(
            circle,
            rgba(236,72,153,.42),
            transparent 65%
        );

    filter:blur(20px);
}

.hero::after{
    content:"";

    position:absolute;
    inset:auto 0 0;

    height:180px;

    background:
        linear-gradient(
            transparent,
            #09061a
        );
}

.hero-content{
    position:relative;
    z-index:2;
    max-width:720px;
}

.eyebrow{
    display:inline-block;

    color:#facc15;

    text-transform:uppercase;
    letter-spacing:5px;
    font-size:11px;
    font-weight:700;

    margin-bottom:20px;

    padding:8px 14px;

    border-radius:30px;

    background:
        linear-gradient(
            90deg,
            rgba(139,92,246,.2),
            rgba(236,72,153,.2)
        );

    border:
        1px solid
        rgba(236,72,153,.35);
}

.hero h1{
    font-family:"Playfair Display",serif;

    font-size:clamp(55px,7vw,100px);

    line-height:.95;

    margin:0 0 28px;

    font-weight:600;

    text-shadow:
        0 10px 50px rgba(0,0,0,.35);
}

.hero h1 span{
    font-style:italic;

    background:
        linear-gradient(
            90deg,
            #facc15,
            #fb923c,
            #f472b6,
            #a78bfa,
            #22d3ee
        );

    -webkit-background-clip:text;
    background-clip:text;

    color:transparent;

    background-size:200% auto;

    animation:
        gradientMove 5s linear infinite;
}

@keyframes gradientMove{

    0%{
        background-position:0% center;
    }

    100%{
        background-position:200% center;
    }

}

.hero p{
    max-width:570px;

    color:#d0c9dc;

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
    color:#fff;

    background:
        linear-gradient(
            135deg,
            #8b5cf6,
            #ec4899,
            #fb923c
        );

    background-size:200% 200%;

    box-shadow:
        0 12px 35px
        rgba(236,72,153,.25);

    animation:
        buttonGradient 6s ease infinite;
}

@keyframes buttonGradient{

    0%{
        background-position:0% 50%;
    }

    50%{
        background-position:100% 50%;
    }

    100%{
        background-position:0% 50%;
    }

}

.btn-gold:hover{
    transform:translateY(-3px) scale(1.02);

    box-shadow:
        0 18px 45px
        rgba(139,92,246,.45);
}

.btn-outline{
    background:
        rgba(255,255,255,.05);

    border:
        1px solid
        rgba(192,132,252,.35);

    color:#fff;
}

.btn-outline:hover{
    border-color:#f472b6;

    color:#f9a8d4;

    background:
        rgba(236,72,153,.1);
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

    background:
        linear-gradient(
            90deg,
            #facc15,
            #f472b6,
            #22d3ee
        );

    -webkit-background-clip:text;
    background-clip:text;

    color:transparent;
}

.stat span{
    font-size:10px;
    color:#aaa1bc;

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
    color:#f472b6;

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

    background:
        linear-gradient(
            90deg,
            #fff,
            #e9d5ff,
            #fbcfe8
        );

    -webkit-background-clip:text;
    background-clip:text;

    color:transparent;
}

.section-description{
    color:#938ba8;
    max-width:460px;
}

/* ================= COLLECTIONS ================= */

.collections{
    display:grid;

    grid-template-columns:
        repeat(5,1fr);

    gap:14px;
}

.collection{
    position:relative;

    height:190px;

    overflow:hidden;

    border-radius:18px;

    background:
        linear-gradient(
            135deg,
            #17102e,
            #28133f
        );

    border:
        1px solid
        rgba(192,132,252,.18);

    cursor:pointer;

    transition:.4s;
}

.collection:nth-child(4n+1){
    border-color:
        rgba(139,92,246,.4);
}

.collection:nth-child(4n+2){
    border-color:
        rgba(236,72,153,.4);
}

.collection:nth-child(4n+3){
    border-color:
        rgba(34,211,238,.4);
}

.collection:nth-child(4n+4){
    border-color:
        rgba(251,146,60,.4);
}

.collection img{
    width:100%;
    height:100%;

    object-fit:cover;

    opacity:.48;

    transition:.5s;
}

.collection:hover{
    transform:
        translateY(-7px)
        scale(1.015);

    box-shadow:
        0 20px 50px
        rgba(139,92,246,.25);
}

.collection:hover img{
    transform:scale(1.1);
    opacity:.72;
}

.collection::after{
    content:"";

    position:absolute;
    inset:0;

    background:
        linear-gradient(
            transparent 20%,
            rgba(9,6,26,.92)
        );
}

.collection-content{
    position:absolute;

    z-index:2;

    left:18px;
    bottom:15px;
}

.collection i{
    color:#facc15;
    font-size:18px;

    text-shadow:
        0 0 15px
        rgba(250,204,21,.7);
}

.collection h3{
    margin:5px 0 0;

    font-family:"Playfair Display",serif;

    font-size:18px;
}

.collection small{
    color:#aaa1bc;
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

    border:
        1px solid
        rgba(192,132,252,.18);

    color:#a9a0bc;

    background:
        rgba(255,255,255,.025);

    border-radius:30px;

    font-size:12px;

    transition:.3s;
}

.filter.active,
.filter:hover{
    color:#fff;

    border-color:transparent;

    background:
        linear-gradient(
            135deg,
            #8b5cf6,
            #ec4899
        );

    box-shadow:
        0 8px 25px
        rgba(139,92,246,.25);
}

/* ================= PRODUCTS ================= */

.products{
    display:grid;

    grid-template-columns:
        repeat(4,1fr);

    gap:20px;
}

.product{
    background:
        linear-gradient(
            145deg,
            rgba(29,18,55,.95),
            rgba(15,9,31,.98)
        );

    border:
        1px solid
        rgba(192,132,252,.13);

    border-radius:20px;

    overflow:hidden;

    transition:.4s;
}

.product:hover{
    transform:translateY(-8px);

    border-color:
        rgba(236,72,153,.45);

    box-shadow:
        0 25px 60px
        rgba(0,0,0,.5),
        0 0 30px
        rgba(139,92,246,.1);
}

.product-image{
    height:300px;

    position:relative;

    overflow:hidden;

    background:
        linear-gradient(
            135deg,
            #20133b,
            #351540
        );
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
            #facc15,
            #fb923c
        );

    color:#251000;

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

    border:
        1px solid
        rgba(255,255,255,.15);

    background:
        rgba(9,6,26,.65);

    color:#fff;

    display:grid;
    place-items:center;

    z-index:3;

    transition:.3s;
}

.wishlist:hover{
    background:#ec4899;

    border-color:#ec4899;

    transform:scale(1.1);
}

.wishlist.active{
    color:#fb7185;

    background:
        rgba(236,72,153,.15);

    border-color:#ec4899;
}

.quick-view{
    position:absolute;

    left:15px;
    right:15px;

    bottom:-55px;

    background:
        linear-gradient(
            135deg,
            #8b5cf6,
            #ec4899
        );

    color:#fff;

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
    color:#f472b6;

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
    color:#facc15;

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

    color:#fff;
}

.old-price{
    color:#777;

    text-decoration:line-through;

    font-size:12px;

    margin-left:6px;
}

.add-cart{
    width:42px;
    height:42px;

    border:
        1px solid
        rgba(192,132,252,.3);

    color:#c084fc;

    background:
        rgba(139,92,246,.08);

    border-radius:50%;

    transition:.3s;
}

.add-cart:hover{
    background:
        linear-gradient(
            135deg,
            #8b5cf6,
            #ec4899
        );

    color:#fff;

    border-color:transparent;

    transform:rotate(90deg);
}

/* ================= FEATURE ================= */

.feature{
    display:grid;

    grid-template-columns:
        1fr 1fr;

    min-height:480px;

    overflow:hidden;

    border-radius:25px;

    background:
        linear-gradient(
            135deg,
            #17102e,
            #25123d,
            #321432
        );

    border:
        1px solid
        rgba(236,72,153,.2);

    box-shadow:
        0 25px 80px
        rgba(0,0,0,.3);
}

.feature-image{
    min-height:480px;

    background:
        linear-gradient(
            135deg,
            rgba(139,92,246,.15),
            rgba(236,72,153,.1)
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
            #c4b5fd,
            #f9a8d4
        );

    -webkit-background-clip:text;
    background-clip:text;

    color:transparent;
}

.feature-content p{
    color:#aaa1bc;
}

.price-large{
    color:#facc15;

    font-size:32px;

    font-weight:700;

    margin:20px 0;

    text-shadow:
        0 0 20px
        rgba(250,204,21,.15);
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

    background:
        linear-gradient(
            135deg,
            rgba(139,92,246,.18),
            rgba(236,72,153,.12)
        );

    border:
        1px solid
        rgba(192,132,252,.2);

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

    color:#9d93ae;

    text-transform:uppercase;
}

/* ================= TRUST ================= */

.trust{
    display:grid;

    grid-template-columns:
        repeat(4,1fr);

    gap:15px;
}

.trust-card{
    padding:28px;

    background:
        linear-gradient(
            145deg,
            rgba(29,18,55,.8),
            rgba(15,9,31,.95)
        );

    border:
        1px solid
        rgba(192,132,252,.13);

    border-radius:18px;

    transition:.35s;
}

.trust-card:hover{
    transform:translateY(-6px);

    border-color:
        rgba(236,72,153,.4);

    box-shadow:
        0 15px 40px
        rgba(139,92,246,.12);
}

.trust-card i{
    color:#f472b6;

    font-size:22px;

    margin-bottom:15px;

    text-shadow:
        0 0 18px
        rgba(236,72,153,.5);
}

.trust-card h3{
    font-size:14px;
    margin:0 0 6px;
}

.trust-card p{
    margin:0;

    color:#837b95;

    font-size:12px;
}

/* ================= NEWSLETTER ================= */

.newsletter{
    text-align:center;

    padding:85px 30px;

    border:
        1px solid
        rgba(236,72,153,.25);

    border-radius:25px;

    background:
        radial-gradient(
            circle at 20% 0,
            rgba(139,92,246,.2),
            transparent 35%
        ),
        radial-gradient(
            circle at 80% 100%,
            rgba(236,72,153,.18),
            transparent 35%
        ),
        #130c27;

    box-shadow:
        0 25px 70px
        rgba(0,0,0,.25);
}

.newsletter h2{
    font-size:50px;
}

.newsletter p{
    color:#91889f;
}

.newsletter-form{
    max-width:520px;

    margin:30px auto 0;

    display:flex;

    padding:5px;

    background:#080512;

    border:
        1px solid
        rgba(192,132,252,.2);

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
    border-top:
        1px solid
        rgba(192,132,252,.13);

    padding:65px 0 25px;

    background:
        linear-gradient(
            180deg,
            transparent,
            rgba(139,92,246,.04)
        );
}

.footer-grid{
    display:grid;

    grid-template-columns:
        2fr 1fr 1fr 1fr;

    gap:50px;
}

.footer-brand{
    font-family:"Playfair Display",serif;

    font-size:28px;

    background:
        linear-gradient(
            90deg,
            #facc15,
            #f472b6,
            #a78bfa,
            #22d3ee
        );

    -webkit-background-clip:text;
    background-clip:text;

    color:transparent;
}

.footer-brand span{
    color:#facc15;
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
    color:#f472b6;

    transform:translateX(4px);
}

.socials{
    display:flex;

    gap:9px;

    margin-top:20px;
}

.social{
    width:38px;
    height:38px;

    border:
        1px solid
        rgba(192,132,252,.2);

    border-radius:50%;

    display:grid;

    place-items:center;

    color:#8e879b;

    transition:.3s;
}

.social:hover{
    color:#fff;

    border-color:#ec4899;

    background:
        linear-gradient(
            135deg,
            #8b5cf6,
            #ec4899
        );

    transform:
        translateY(-3px)
        rotate(5deg);
}

.copyright{
    border-top:
        1px solid
        rgba(192,132,252,.1);

    margin-top:50px;

    padding-top:22px;

    text-align:center;

    color:#514b5d;

    font-size:11px;
}

/* ================= CART ================= */

.overlay{
    position:fixed;

    inset:0;

    background:
        rgba(9,6,26,.72);

    backdrop-filter:blur(7px);

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
            #17102e,
            #0c0819
        );

    z-index:2001;

    border-left:
        1px solid
        rgba(236,72,153,.25);

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

    border-bottom:
        1px solid
        rgba(192,132,252,.12);
}

.cart-header h2{
    font-family:"Playfair Display",serif;

    margin:0;

    background:
        linear-gradient(
            90deg,
            #fff,
            #f9a8d4
        );

    -webkit-background-clip:text;
    background-clip:text;

    color:transparent;
}

.close{
    background:none;

    border:0;

    color:#aaa;

    font-size:20px;
}

.close:hover{
    color:#f472b6;
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

    border-bottom:
        1px solid
        rgba(192,132,252,.1);
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
    color:#facc15;

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

    border:
        1px solid
        rgba(192,132,252,.2);

    background:#211641;

    color:#fff;
}

.qty button:hover{
    background:#8b5cf6;
}

.remove{
    background:none !important;

    border:0 !important;

    color:#777 !important;

    width:auto !important;
}

.remove:hover{
    color:#f472b6 !important;
}

.cart-footer{
    padding:25px;

    border-top:
        1px solid
        rgba(192,132,252,.12);
}

.total{
    display:flex;

    justify-content:space-between;

    margin-bottom:18px;

    font-size:18px;
}

.total strong{
    color:#facc15;
}

.empty-cart{
    text-align:center;

    color:#666;

    padding:80px 20px;
}

.empty-cart i{
    font-size:40px;

    color:#35274b;

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

    background:
        rgba(9,6,26,.8);

    backdrop-filter:blur(10px);

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
            135deg,
            #17102e,
            #0f0a1e
        );

    border:
        1px solid
        rgba(236,72,153,.25);

    border-radius:25px;

    display:grid;

    grid-template-columns:1fr 1fr;

    position:relative;

    box-shadow:
        0 30px 100px
        rgba(0,0,0,.6);
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

    background:
        linear-gradient(
            90deg,
            #fff,
            #f9a8d4,
            #c4b5fd
        );

    -webkit-background-clip:text;
    background-clip:text;

    color:transparent;
}

.modal-close{
    position:absolute;

    right:18px;
    top:18px;

    z-index:3;

    width:40px;
    height:40px;

    border-radius:50%;

    background:#09061a;

    border:
        1px solid
        rgba(236,72,153,.3);

    color:#fff;
}

.modal-close:hover{
    background:#ec4899;
}

/* ================= TOAST ================= */

.toast{
    position:fixed;

    bottom:25px;
    left:50%;

    transform:
        translate(-50%,100px);

    background:
        linear-gradient(
            135deg,
            #8b5cf6,
            #ec4899
        );

    color:#fff;

    padding:13px 20px;

    border-radius:50px;

    z-index:5000;

    font-size:13px;

    font-weight:700;

    opacity:0;

    transition:.4s;

    box-shadow:
        0 12px 35px
        rgba(236,72,153,.3);
}

.toast.show{
    opacity:1;

    transform:
        translate(-50%,0);
}

/* ================= SCROLLBAR ================= */

::-webkit-scrollbar{
    width:9px;
}

::-webkit-scrollbar-track{
    background:#09061a;
}

::-webkit-scrollbar-thumb{
    background:
        linear-gradient(
            #8b5cf6,
            #ec4899
        );

    border-radius:20px;
}

::-webkit-scrollbar-thumb:hover{
    background:
        linear-gradient(
            #ec4899,
            #22d3ee
        );
}

/* ================= SELECTION ================= */

::selection{
    background:#ec4899;
    color:#fff;
}

/* ================= RESPONSIVE ================= */

@media(max-width:1150px){

    .collections{
        grid-template-columns:
            repeat(4,1fr);
    }

    .products{
        grid-template-columns:
            repeat(3,1fr);
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
        grid-template-columns:
            repeat(3,1fr);
    }

    .products{
        grid-template-columns:
            repeat(2,1fr);
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
        grid-template-columns:
            repeat(2,1fr);
    }

    .footer-grid{
        grid-template-columns:
            1fr 1fr;
    }
}

@media(max-width:650px){

    .container{
        width:
            min(
                100% - 28px,
                var(--max)
            );
    }

    .nav{
        height:70px;
    }

    .logo{
        font-size:23px;
    }

    .nav-right
    .nav-icon:first-child{
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
        grid-template-columns:
            repeat(2,1fr);
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
        grid-template-columns:
            1fr 1fr;
    }

    .footer-grid{
        grid-template-columns:
            1fr 1fr;

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

        background:#080512;

        border:
            1px solid
            #33264a;

        border-radius:50px;

        margin-bottom:10px;
    }

    .newsletter-form button{
        width:100%;
    }
}

@media(max-width:430px){

    .collections{
        grid-template-columns:
            1fr 1fr;
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
