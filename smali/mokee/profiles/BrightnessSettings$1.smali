.class final Lmokee/profiles/BrightnessSettings$1;
.super Ljava/lang/Object;
.source "BrightnessSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/profiles/BrightnessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lmokee/profiles/BrightnessSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lmokee/profiles/BrightnessSettings$1;->createFromParcel(Landroid/os/Parcel;)Lmokee/profiles/BrightnessSettings;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmokee/profiles/BrightnessSettings;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    new-instance v0, Lmokee/profiles/BrightnessSettings;

    invoke-direct {v0, p1}, Lmokee/profiles/BrightnessSettings;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lmokee/profiles/BrightnessSettings$1;->newArray(I)[Lmokee/profiles/BrightnessSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmokee/profiles/BrightnessSettings;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 59
    new-array v0, p1, [Lmokee/profiles/BrightnessSettings;

    return-object v0
.end method
