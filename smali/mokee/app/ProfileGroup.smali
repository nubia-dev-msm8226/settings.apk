.class public final Lmokee/app/ProfileGroup;
.super Ljava/lang/Object;
.source "ProfileGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/app/ProfileGroup$1;,
        Lmokee/app/ProfileGroup$Mode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmokee/app/ProfileGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDefaultGroup:Z

.field private mDirty:Z

.field private mLightsMode:Lmokee/app/ProfileGroup$Mode;

.field private mName:Ljava/lang/String;

.field private mRingerMode:Lmokee/app/ProfileGroup$Mode;

.field private mRingerOverride:Landroid/net/Uri;

.field private mSoundMode:Lmokee/app/ProfileGroup$Mode;

.field private mSoundOverride:Landroid/net/Uri;

.field private mUuid:Ljava/util/UUID;

.field private mVibrateMode:Lmokee/app/ProfileGroup$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lmokee/app/ProfileGroup$1;

    invoke-direct {v0}, Lmokee/app/ProfileGroup$1;-><init>()V

    .line 67
    sput-object v0, Lmokee/app/ProfileGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lmokee/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 56
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lmokee/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 58
    sget-object v0, Lmokee/app/ProfileGroup$Mode;->DEFAULT:Lmokee/app/ProfileGroup$Mode;

    iput-object v0, p0, Lmokee/app/ProfileGroup;->mSoundMode:Lmokee/app/ProfileGroup$Mode;

    .line 59
    sget-object v0, Lmokee/app/ProfileGroup$Mode;->DEFAULT:Lmokee/app/ProfileGroup$Mode;

    iput-object v0, p0, Lmokee/app/ProfileGroup;->mRingerMode:Lmokee/app/ProfileGroup$Mode;

    .line 60
    sget-object v0, Lmokee/app/ProfileGroup$Mode;->DEFAULT:Lmokee/app/ProfileGroup$Mode;

    iput-object v0, p0, Lmokee/app/ProfileGroup;->mVibrateMode:Lmokee/app/ProfileGroup$Mode;

    .line 61
    sget-object v0, Lmokee/app/ProfileGroup$Mode;->DEFAULT:Lmokee/app/ProfileGroup$Mode;

    iput-object v0, p0, Lmokee/app/ProfileGroup;->mLightsMode:Lmokee/app/ProfileGroup$Mode;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmokee/app/ProfileGroup;->mDefaultGroup:Z

    .line 93
    invoke-virtual {p0, p1}, Lmokee/app/ProfileGroup;->readFromParcel(Landroid/os/Parcel;)V

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmokee/app/ProfileGroup;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lmokee/app/ProfileGroup;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lmokee/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public isDefaultGroup()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lmokee/app/ProfileGroup;->mDefaultGroup:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 294
    invoke-static {p1}, Lmokee/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 295
    .local v0, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 300
    .local v1, "parcelableVersion":I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmokee/app/ProfileGroup;->mName:Ljava/lang/String;

    .line 302
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lmokee/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lmokee/app/ProfileGroup;->mDefaultGroup:Z

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    iput-boolean v3, p0, Lmokee/app/ProfileGroup;->mDirty:Z

    .line 305
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lmokee/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 306
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lmokee/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 308
    const-class v2, Lmokee/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmokee/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lmokee/app/ProfileGroup$Mode;

    iput-object v2, p0, Lmokee/app/ProfileGroup;->mSoundMode:Lmokee/app/ProfileGroup$Mode;

    .line 309
    const-class v2, Lmokee/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmokee/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lmokee/app/ProfileGroup$Mode;

    iput-object v2, p0, Lmokee/app/ProfileGroup;->mRingerMode:Lmokee/app/ProfileGroup$Mode;

    .line 310
    const-class v2, Lmokee/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmokee/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lmokee/app/ProfileGroup$Mode;

    iput-object v2, p0, Lmokee/app/ProfileGroup;->mVibrateMode:Lmokee/app/ProfileGroup$Mode;

    .line 311
    const-class v2, Lmokee/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmokee/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lmokee/app/ProfileGroup$Mode;

    iput-object v2, p0, Lmokee/app/ProfileGroup;->mLightsMode:Lmokee/app/ProfileGroup$Mode;

    .line 315
    :cond_0
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 292
    return-void

    :cond_1
    move v2, v4

    .line 303
    goto :goto_0

    :cond_2
    move v3, v4

    .line 304
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 273
    invoke-static {p1}, Lmokee/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 276
    .local v0, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    iget-object v1, p0, Lmokee/app/ProfileGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    new-instance v1, Landroid/os/ParcelUuid;

    iget-object v4, p0, Lmokee/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    invoke-direct {v1, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v1, p1, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 278
    iget-boolean v1, p0, Lmokee/app/ProfileGroup;->mDefaultGroup:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-boolean v1, p0, Lmokee/app/ProfileGroup;->mDirty:Z

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-object v1, p0, Lmokee/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 281
    iget-object v1, p0, Lmokee/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 282
    iget-object v1, p0, Lmokee/app/ProfileGroup;->mSoundMode:Lmokee/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Lmokee/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lmokee/app/ProfileGroup;->mRingerMode:Lmokee/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Lmokee/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lmokee/app/ProfileGroup;->mVibrateMode:Lmokee/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Lmokee/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lmokee/app/ProfileGroup;->mLightsMode:Lmokee/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Lmokee/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 271
    return-void

    :cond_0
    move v1, v3

    .line 278
    goto :goto_0

    :cond_1
    move v2, v3

    .line 279
    goto :goto_1
.end method
