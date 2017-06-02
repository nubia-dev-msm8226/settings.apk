.class final Lcom/android/settings/WirelessSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 480
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 483
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v11, "user"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    .line 484
    .local v10, "um":Landroid/os/UserManager;
    invoke-virtual {v10}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v11

    if-eqz v11, :cond_a

    move v5, v6

    .line 485
    .local v5, "isSecondaryUser":Z
    :goto_0
    if-nez v5, :cond_0

    .line 486
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 487
    const v12, 0x1120075

    .line 486
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 488
    .local v6, "isWimaxEnabled":Z
    :cond_0
    if-nez v6, :cond_1

    .line 489
    const-string/jumbo v11, "wimax_settings"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_1
    if-eqz v5, :cond_2

    .line 493
    const-string/jumbo v11, "vpn_settings"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_2
    const-string/jumbo v11, "nfc"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 497
    check-cast v7, Landroid/nfc/NfcManager;

    .line 499
    .local v7, "manager":Landroid/nfc/NfcManager;
    if-eqz v7, :cond_3

    .line 500
    invoke-virtual {v7}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 501
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_b

    .line 502
    const-string/jumbo v11, "toggle_nfc"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    const-string/jumbo v11, "android_beam_settings"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    const-string/jumbo v11, "nfc_payment_settings"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_3
    :goto_1
    if-nez v5, :cond_4

    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 514
    :cond_4
    const-string/jumbo v11, "mobile_network_settings"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    const-string/jumbo v11, "manage_mobile_plan"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 521
    const v12, 0x7f0e0013

    .line 520
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 522
    .local v4, "isMobilePlanEnabled":Z
    if-nez v4, :cond_6

    .line 523
    const-string/jumbo v11, "manage_mobile_plan"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_6
    const-string/jumbo v11, "android.hardware.type.television"

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 528
    const-string/jumbo v11, "toggle_airplane"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_7
    const-string/jumbo v11, "proxy_settings"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    const-string/jumbo v11, "connectivity"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 535
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 537
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-nez v5, :cond_c

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 541
    :goto_2
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 542
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 547
    :goto_3
    const-string/jumbo v11, "no_network_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    .line 546
    invoke-static {p1, v11, v12}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 548
    const-string/jumbo v11, "network_reset"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 553
    const v12, 0x112007f

    .line 552
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 555
    .local v3, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v3, :cond_9

    .line 556
    :try_start_0
    const-string/jumbo v11, "com.android.cellbroadcastreceiver"

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 557
    const/4 v12, 0x2

    .line 556
    if-ne v11, v12, :cond_9

    .line 558
    const/4 v3, 0x0

    .line 564
    .end local v3    # "isCellBroadcastAppLinkEnabled":Z
    :cond_9
    :goto_4
    invoke-virtual {v10}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v11

    if-eqz v11, :cond_e

    if-eqz v3, :cond_e

    .line 568
    :goto_5
    return-object v9

    .line 484
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v4    # "isMobilePlanEnabled":Z
    .end local v5    # "isSecondaryUser":Z
    .end local v6    # "isWimaxEnabled":Z
    .end local v7    # "manager":Landroid/nfc/NfcManager;
    :cond_a
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 506
    .restart local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .restart local v5    # "isSecondaryUser":Z
    .restart local v6    # "isWimaxEnabled":Z
    .restart local v7    # "manager":Landroid/nfc/NfcManager;
    :cond_b
    const-string/jumbo v11, "android.hardware.nfc.hce"

    .line 505
    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 508
    const-string/jumbo v11, "nfc_payment_settings"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 538
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v4    # "isMobilePlanEnabled":Z
    :cond_c
    const-string/jumbo v11, "tether_settings"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 543
    :cond_d
    const-string/jumbo v11, "wifi_calling_settings"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 561
    .restart local v3    # "isCellBroadcastAppLinkEnabled":Z
    :catch_0
    move-exception v2

    .line 562
    .local v2, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    .local v3, "isCellBroadcastAppLinkEnabled":Z
    goto :goto_4

    .line 565
    .end local v2    # "ignored":Ljava/lang/IllegalArgumentException;
    .end local v3    # "isCellBroadcastAppLinkEnabled":Z
    :cond_e
    const-string/jumbo v11, "cell_broadcast_settings"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    invoke-static {p1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 473
    :cond_0
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 474
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f080081

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 475
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
