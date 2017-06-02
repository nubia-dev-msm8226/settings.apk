.class public final Lmokee/app/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/app/Profile$1;,
        Lmokee/app/Profile$ProfileTrigger;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmokee/app/Profile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lmokee/profiles/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mAirplaneMode:Lmokee/profiles/AirplaneModeSettings;

.field private mBrightness:Lmokee/profiles/BrightnessSettings;

.field private mDefaultGroup:Lmokee/app/ProfileGroup;

.field private mDirty:Z

.field private mDozeMode:I

.field private mExpandedDesktopMode:I

.field private mName:Ljava/lang/String;

.field private mNameResId:I

.field private mNotificationLightMode:I

.field private mProfileType:I

.field private mRingMode:Lmokee/profiles/RingModeSettings;

.field private mScreenLockMode:Lmokee/profiles/LockSettings;

.field private mSecondaryUuids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarIndicator:Z

.field private mTriggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmokee/app/Profile$ProfileTrigger;",
            ">;"
        }
    .end annotation
.end field

.field private mUuid:Ljava/util/UUID;

.field private networkConnectionSubIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lmokee/profiles/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private profileGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lmokee/app/ProfileGroup;",
            ">;"
        }
    .end annotation
.end field

.field private streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lmokee/profiles/StreamSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 368
    new-instance v0, Lmokee/app/Profile$1;

    invoke-direct {v0}, Lmokee/app/Profile$1;-><init>()V

    sput-object v0, Lmokee/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmokee/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmokee/app/Profile;->profileGroups:Ljava/util/Map;

    .line 74
    iput-boolean v1, p0, Lmokee/app/Profile;->mStatusBarIndicator:Z

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmokee/app/Profile;->streams:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmokee/app/Profile;->mTriggers:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmokee/app/Profile;->connections:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmokee/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    .line 90
    new-instance v0, Lmokee/profiles/RingModeSettings;

    invoke-direct {v0}, Lmokee/profiles/RingModeSettings;-><init>()V

    iput-object v0, p0, Lmokee/app/Profile;->mRingMode:Lmokee/profiles/RingModeSettings;

    .line 92
    new-instance v0, Lmokee/profiles/AirplaneModeSettings;

    invoke-direct {v0}, Lmokee/profiles/AirplaneModeSettings;-><init>()V

    iput-object v0, p0, Lmokee/app/Profile;->mAirplaneMode:Lmokee/profiles/AirplaneModeSettings;

    .line 94
    new-instance v0, Lmokee/profiles/BrightnessSettings;

    invoke-direct {v0}, Lmokee/profiles/BrightnessSettings;-><init>()V

    iput-object v0, p0, Lmokee/app/Profile;->mBrightness:Lmokee/profiles/BrightnessSettings;

    .line 96
    new-instance v0, Lmokee/profiles/LockSettings;

    invoke-direct {v0}, Lmokee/profiles/LockSettings;-><init>()V

    iput-object v0, p0, Lmokee/app/Profile;->mScreenLockMode:Lmokee/profiles/LockSettings;

    .line 98
    iput v1, p0, Lmokee/app/Profile;->mExpandedDesktopMode:I

    .line 100
    iput v1, p0, Lmokee/app/Profile;->mDozeMode:I

    .line 102
    iput v1, p0, Lmokee/app/Profile;->mNotificationLightMode:I

    .line 393
    invoke-virtual {p0, p1}, Lmokee/app/Profile;->readFromParcel(Landroid/os/Parcel;)V

    .line 392
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmokee/app/Profile;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lmokee/app/Profile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    move-object v0, p1

    .line 461
    check-cast v0, Lmokee/app/Profile;

    .line 462
    .local v0, "tmp":Lmokee/app/Profile;
    iget-object v1, p0, Lmokee/app/Profile;->mName:Ljava/lang/String;

    iget-object v2, v0, Lmokee/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 463
    const/4 v1, -0x1

    return v1

    .line 464
    :cond_0
    iget-object v1, p0, Lmokee/app/Profile;->mName:Ljava/lang/String;

    iget-object v2, v0, Lmokee/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 465
    const/4 v1, 0x1

    return v1

    .line 467
    :cond_1
    return v3
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 13
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 643
    invoke-static {p1}, Lmokee/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v3

    .line 644
    .local v3, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    invoke-virtual {v3}, Lmokee/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v4

    .line 649
    .local v4, "parcelableVersion":I
    const/4 v8, 0x2

    if-lt v4, v8, :cond_f

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmokee/app/Profile;->mName:Ljava/lang/String;

    .line 653
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    .line 654
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, p0, Lmokee/app/Profile;->mNameResId:I

    .line 656
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    .line 657
    sget-object v8, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    invoke-virtual {v8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v8

    iput-object v8, p0, Lmokee/app/Profile;->mUuid:Ljava/util/UUID;

    .line 659
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    .line 660
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v9

    const/4 v8, 0x0

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_3

    aget-object v2, v9, v8

    .local v2, "parcel":Landroid/os/Parcelable;
    move-object v7, v2

    .line 661
    check-cast v7, Landroid/os/ParcelUuid;

    .line 662
    .local v7, "u":Landroid/os/ParcelUuid;
    iget-object v11, p0, Lmokee/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 665
    .end local v2    # "parcel":Landroid/os/Parcelable;
    .end local v7    # "u":Landroid/os/ParcelUuid;
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lmokee/app/Profile;->mStatusBarIndicator:Z

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, p0, Lmokee/app/Profile;->mProfileType:I

    .line 667
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lmokee/app/Profile;->mDirty:Z

    .line 668
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_7

    .line 669
    sget-object v8, Lmokee/app/ProfileGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lmokee/app/ProfileGroup;

    const/4 v9, 0x0

    array-length v10, v8

    :goto_3
    if-ge v9, v10, :cond_7

    aget-object v1, v8, v9

    .line 670
    .local v1, "group":Lmokee/app/ProfileGroup;
    iget-object v11, p0, Lmokee/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-virtual {v1}, Lmokee/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v12

    invoke-interface {v11, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    invoke-virtual {v1}, Lmokee/app/ProfileGroup;->isDefaultGroup()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 672
    iput-object v1, p0, Lmokee/app/Profile;->mDefaultGroup:Lmokee/app/ProfileGroup;

    .line 669
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 665
    .end local v1    # "group":Lmokee/app/ProfileGroup;
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 667
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 676
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_8

    .line 677
    sget-object v8, Lmokee/profiles/StreamSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lmokee/profiles/StreamSettings;

    const/4 v9, 0x0

    array-length v10, v8

    :goto_4
    if-ge v9, v10, :cond_8

    aget-object v5, v8, v9

    .line 678
    .local v5, "stream":Lmokee/profiles/StreamSettings;
    iget-object v11, p0, Lmokee/app/Profile;->streams:Ljava/util/Map;

    invoke-virtual {v5}, Lmokee/profiles/StreamSettings;->getStreamId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 681
    .end local v5    # "stream":Lmokee/profiles/StreamSettings;
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_9

    .line 683
    sget-object v8, Lmokee/profiles/ConnectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lmokee/profiles/ConnectionSettings;

    .line 682
    const/4 v9, 0x0

    array-length v10, v8

    :goto_5
    if-ge v9, v10, :cond_9

    aget-object v0, v8, v9

    .line 684
    .local v0, "connection":Lmokee/profiles/ConnectionSettings;
    iget-object v11, p0, Lmokee/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {v0}, Lmokee/profiles/ConnectionSettings;->getConnectionId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 687
    .end local v0    # "connection":Lmokee/profiles/ConnectionSettings;
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_a

    .line 688
    sget-object v8, Lmokee/profiles/RingModeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmokee/profiles/RingModeSettings;

    iput-object v8, p0, Lmokee/app/Profile;->mRingMode:Lmokee/profiles/RingModeSettings;

    .line 690
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b

    .line 691
    sget-object v8, Lmokee/profiles/AirplaneModeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmokee/profiles/AirplaneModeSettings;

    iput-object v8, p0, Lmokee/app/Profile;->mAirplaneMode:Lmokee/profiles/AirplaneModeSettings;

    .line 693
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_c

    .line 694
    sget-object v8, Lmokee/profiles/BrightnessSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmokee/profiles/BrightnessSettings;

    iput-object v8, p0, Lmokee/app/Profile;->mBrightness:Lmokee/profiles/BrightnessSettings;

    .line 696
    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_d

    .line 697
    sget-object v8, Lmokee/profiles/LockSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmokee/profiles/LockSettings;

    iput-object v8, p0, Lmokee/app/Profile;->mScreenLockMode:Lmokee/profiles/LockSettings;

    .line 699
    :cond_d
    sget-object v8, Lmokee/app/Profile$ProfileTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lmokee/app/Profile$ProfileTrigger;

    const/4 v9, 0x0

    array-length v10, v8

    :goto_6
    if-ge v9, v10, :cond_e

    aget-object v6, v8, v9

    .line 700
    .local v6, "trigger":Lmokee/app/Profile$ProfileTrigger;
    iget-object v11, p0, Lmokee/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-static {v6}, Lmokee/app/Profile$ProfileTrigger;->-get0(Lmokee/app/Profile$ProfileTrigger;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 702
    .end local v6    # "trigger":Lmokee/app/Profile$ProfileTrigger;
    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, p0, Lmokee/app/Profile;->mExpandedDesktopMode:I

    .line 703
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, p0, Lmokee/app/Profile;->mDozeMode:I

    .line 705
    :cond_f
    const/4 v8, 0x5

    if-lt v4, v8, :cond_10

    .line 706
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, p0, Lmokee/app/Profile;->mNotificationLightMode:I

    .line 707
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_10

    .line 709
    sget-object v8, Lmokee/profiles/ConnectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lmokee/profiles/ConnectionSettings;

    .line 708
    const/4 v9, 0x0

    array-length v10, v8

    :goto_7
    if-ge v9, v10, :cond_10

    aget-object v0, v8, v9

    .line 711
    .restart local v0    # "connection":Lmokee/profiles/ConnectionSettings;
    iget-object v11, p0, Lmokee/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    invoke-virtual {v0}, Lmokee/profiles/ConnectionSettings;->getSubId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 717
    .end local v0    # "connection":Lmokee/profiles/ConnectionSettings;
    :cond_10
    invoke-virtual {v3}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 641
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 542
    invoke-static {p1}, Lmokee/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 545
    .local v0, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    iget-object v4, p0, Lmokee/app/Profile;->mName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 546
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    iget-object v4, p0, Lmokee/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    :goto_0
    iget v4, p0, Lmokee/app/Profile;->mNameResId:I

    if-eqz v4, :cond_6

    .line 552
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    iget v4, p0, Lmokee/app/Profile;->mNameResId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    :goto_1
    iget-object v4, p0, Lmokee/app/Profile;->mUuid:Ljava/util/UUID;

    if-eqz v4, :cond_7

    .line 558
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    new-instance v4, Landroid/os/ParcelUuid;

    iget-object v7, p0, Lmokee/app/Profile;->mUuid:Ljava/util/UUID;

    invoke-direct {v4, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v4, p1, v6}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 563
    :goto_2
    iget-object v4, p0, Lmokee/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmokee/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 571
    :cond_0
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    :goto_3
    iget-boolean v4, p0, Lmokee/app/Profile;->mStatusBarIndicator:Z

    if-eqz v4, :cond_a

    move v4, v5

    :goto_4
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    iget v4, p0, Lmokee/app/Profile;->mProfileType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    iget-boolean v4, p0, Lmokee/app/Profile;->mDirty:Z

    if-eqz v4, :cond_b

    move v4, v5

    :goto_5
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    iget-object v4, p0, Lmokee/app/Profile;->profileGroups:Ljava/util/Map;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmokee/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 581
    :cond_1
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    :goto_6
    iget-object v4, p0, Lmokee/app/Profile;->streams:Ljava/util/Map;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmokee/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 588
    :cond_2
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    :goto_7
    iget-object v4, p0, Lmokee/app/Profile;->connections:Ljava/util/Map;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lmokee/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 595
    :cond_3
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    :goto_8
    iget-object v4, p0, Lmokee/app/Profile;->mRingMode:Lmokee/profiles/RingModeSettings;

    if-eqz v4, :cond_f

    .line 598
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    iget-object v4, p0, Lmokee/app/Profile;->mRingMode:Lmokee/profiles/RingModeSettings;

    invoke-virtual {v4, p1, v6}, Lmokee/profiles/RingModeSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 603
    :goto_9
    iget-object v4, p0, Lmokee/app/Profile;->mAirplaneMode:Lmokee/profiles/AirplaneModeSettings;

    if-eqz v4, :cond_10

    .line 604
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    iget-object v4, p0, Lmokee/app/Profile;->mAirplaneMode:Lmokee/profiles/AirplaneModeSettings;

    invoke-virtual {v4, p1, v6}, Lmokee/profiles/AirplaneModeSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 609
    :goto_a
    iget-object v4, p0, Lmokee/app/Profile;->mBrightness:Lmokee/profiles/BrightnessSettings;

    if-eqz v4, :cond_11

    .line 610
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    iget-object v4, p0, Lmokee/app/Profile;->mBrightness:Lmokee/profiles/BrightnessSettings;

    invoke-virtual {v4, p1, v6}, Lmokee/profiles/BrightnessSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 615
    :goto_b
    iget-object v4, p0, Lmokee/app/Profile;->mScreenLockMode:Lmokee/profiles/LockSettings;

    if-eqz v4, :cond_12

    .line 616
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    iget-object v4, p0, Lmokee/app/Profile;->mScreenLockMode:Lmokee/profiles/LockSettings;

    invoke-virtual {v4, p1, v6}, Lmokee/profiles/LockSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 621
    :goto_c
    iget-object v4, p0, Lmokee/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    new-array v7, v6, [Lmokee/app/Profile$ProfileTrigger;

    invoke-interface {v4, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lmokee/app/Profile$ProfileTrigger;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 622
    iget v4, p0, Lmokee/app/Profile;->mExpandedDesktopMode:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    iget v4, p0, Lmokee/app/Profile;->mDozeMode:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    iget v4, p0, Lmokee/app/Profile;->mNotificationLightMode:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    iget-object v4, p0, Lmokee/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lmokee/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 633
    :cond_4
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    :goto_d
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 540
    return-void

    .line 549
    :cond_5
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 555
    :cond_6
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 561
    :cond_7
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 564
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lmokee/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 565
    .local v3, "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    iget-object v4, p0, Lmokee/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "u$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 566
    .local v1, "u":Ljava/util/UUID;
    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 568
    .end local v1    # "u":Ljava/util/UUID;
    :cond_9
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_3

    .end local v2    # "u$iterator":Ljava/util/Iterator;
    .end local v3    # "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    :cond_a
    move v4, v6

    .line 573
    goto/16 :goto_4

    :cond_b
    move v4, v6

    .line 575
    goto/16 :goto_5

    .line 577
    :cond_c
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    iget-object v4, p0, Lmokee/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    .line 579
    new-array v7, v6, [Lmokee/app/ProfileGroup;

    .line 578
    invoke-interface {v4, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lmokee/app/ProfileGroup;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_6

    .line 584
    :cond_d
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    iget-object v4, p0, Lmokee/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    .line 586
    new-array v7, v6, [Lmokee/profiles/StreamSettings;

    .line 585
    invoke-interface {v4, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lmokee/profiles/StreamSettings;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_7

    .line 591
    :cond_e
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    iget-object v4, p0, Lmokee/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    .line 593
    new-array v7, v6, [Lmokee/profiles/ConnectionSettings;

    .line 592
    invoke-interface {v4, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lmokee/profiles/ConnectionSettings;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_8

    .line 601
    :cond_f
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 607
    :cond_10
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 613
    :cond_11
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 619
    :cond_12
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_c

    .line 629
    :cond_13
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    iget-object v4, p0, Lmokee/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    .line 631
    new-array v5, v6, [Lmokee/profiles/ConnectionSettings;

    .line 630
    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lmokee/profiles/ConnectionSettings;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_d
.end method
