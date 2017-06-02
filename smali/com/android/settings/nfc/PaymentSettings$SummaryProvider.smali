.class Lcom/android/settings/nfc/PaymentSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "PaymentSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/settings/nfc/PaymentSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/android/settings/nfc/PaymentSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 108
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 7
    .param p1, "listening"    # Z

    .prologue
    .line 115
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 116
    new-instance v1, Lcom/android/settings/nfc/PaymentBackend;

    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    .line 117
    .local v1, "paymentBackend":Lcom/android/settings/nfc/PaymentBackend;
    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentBackend;->refresh()V

    .line 118
    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    .line 119
    .local v0, "app":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    if-eqz v0, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 121
    iget-object v5, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 120
    const v5, 0x7f0c0de4

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 114
    .end local v0    # "app":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .end local v1    # "paymentBackend":Lcom/android/settings/nfc/PaymentBackend;
    :cond_0
    return-void
.end method
