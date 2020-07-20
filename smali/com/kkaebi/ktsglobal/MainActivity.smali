.class public Lcom/kkaebi/ktsglobal/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private interstitial:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kkaebi/ktsglobal/MainActivity;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/kkaebi/ktsglobal/MainActivity;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 47
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v5, 0x7f04001b

    invoke-virtual {p0, v5}, Lcom/kkaebi/ktsglobal/MainActivity;->setContentView(I)V

    .line 22
    const v5, 0x7f0c0060

    invoke-virtual {p0, v5}, Lcom/kkaebi/ktsglobal/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    .line 23
    .local v3, "myWebView":Landroid/webkit/WebView;
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 24
    .local v4, "webSettings":Landroid/webkit/WebSettings;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 25
    const-string v5, "file:///android_asset/index.html"

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 27
    const v5, 0x7f0c0061

    invoke-virtual {p0, v5}, Lcom/kkaebi/ktsglobal/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/AdView;

    .line 28
    .local v2, "mAdView":Lcom/google/android/gms/ads/AdView;
    new-instance v5, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v5}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v5}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 29
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    nop

    nop

    nop

    .line 32
    new-instance v5, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v5, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/kkaebi/ktsglobal/MainActivity;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 33
    iget-object v5, p0, Lcom/kkaebi/ktsglobal/MainActivity;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p0}, Lcom/kkaebi/ktsglobal/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 34
    new-instance v5, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v5}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v5}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 35
    .local v1, "adRequest2":Lcom/google/android/gms/ads/AdRequest;
    iget-object v5, p0, Lcom/kkaebi/ktsglobal/MainActivity;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    nop

    nop

    nop

    .line 38
    return-void
.end method
