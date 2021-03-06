.class Lcom/android/settings/notification/SoundSettings$SummaryProvider;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

.field private final maxVolume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .prologue
    .line 607
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 608
    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 609
    iput-object p2, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 610
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->mAudioManager:Landroid/media/AudioManager;

    .line 611
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->maxVolume:I

    .line 607
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 632
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 634
    .local v2, "ringerMode":I
    const-string/jumbo v0, ""

    .line 635
    .local v0, "percent":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 636
    const v1, 0x7f0c0c42

    .line 646
    .local v1, "resId":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v4, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->mContext:Landroid/content/Context;

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v8

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 631
    return-void

    .line 637
    .end local v1    # "resId":I
    :cond_0
    if-ne v2, v9, :cond_1

    .line 638
    const v1, 0x7f0c0c41

    .restart local v1    # "resId":I
    goto :goto_0

    .line 641
    .end local v1    # "resId":I
    :cond_1
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    .line 642
    iget-object v4, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->mAudioManager:Landroid/media/AudioManager;

    .line 643
    const/4 v5, 0x2

    .line 642
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    int-to-double v4, v4

    .line 643
    iget v6, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->maxVolume:I

    int-to-double v6, v6

    .line 642
    div-double/2addr v4, v6

    .line 641
    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 644
    const v1, 0x7f0c0c40

    .restart local v1    # "resId":I
    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 616
    if-eqz p1, :cond_0

    .line 617
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 618
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 619
    const-string/jumbo v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 620
    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 621
    const-string/jumbo v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 622
    const-string/jumbo v1, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 623
    const-string/jumbo v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 624
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 615
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 626
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
