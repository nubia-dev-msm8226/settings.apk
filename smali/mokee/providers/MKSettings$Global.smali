.class public final Lmokee/providers/MKSettings$Global;
.super Landroid/provider/Settings$NameValueTable;
.source "MKSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/providers/MKSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Global"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final LEGACY_GLOBAL_SETTINGS:[Ljava/lang/String;

.field private static final sNameValueCache:Lmokee/providers/MKSettings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 3037
    const-string/jumbo v0, "content://mksettings/global"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmokee/providers/MKSettings$Global;->CONTENT_URI:Landroid/net/Uri;

    .line 3041
    new-instance v0, Lmokee/providers/MKSettings$NameValueCache;

    .line 3042
    const-string/jumbo v1, "sys.mk_settings_global_version"

    .line 3043
    sget-object v2, Lmokee/providers/MKSettings$Global;->CONTENT_URI:Landroid/net/Uri;

    .line 3044
    const-string/jumbo v3, "GET_global"

    .line 3045
    const-string/jumbo v4, "PUT_global"

    .line 3041
    invoke-direct {v0, v1, v2, v3, v4}, Lmokee/providers/MKSettings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmokee/providers/MKSettings$Global;->sNameValueCache:Lmokee/providers/MKSettings$NameValueCache;

    .line 3455
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 3456
    const-string/jumbo v1, "wake_when_plugged_or_unplugged"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3457
    const-string/jumbo v1, "power_notifications_vibrate"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3458
    const-string/jumbo v1, "power_notifications_ringtone"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 3459
    const-string/jumbo v1, "zen_disable_ducking_during_media_playback"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 3460
    const-string/jumbo v1, "wifi_auto_priority"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 3455
    sput-object v0, Lmokee/providers/MKSettings$Global;->LEGACY_GLOBAL_SETTINGS:[Ljava/lang/String;

    .line 3036
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3036
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 3146
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lmokee/providers/MKSettings$Global;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userId"    # I

    .prologue
    .line 3151
    invoke-static {p0, p1, p3}, Lmokee/providers/MKSettings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3153
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2    # "def":I
    :cond_0
    return p2

    .line 3154
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 3155
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3105
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lmokee/providers/MKSettings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3111
    sget-object v0, Lmokee/providers/MKSettings$Global;->sNameValueCache:Lmokee/providers/MKSettings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Lmokee/providers/MKSettings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 3207
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lmokee/providers/MKSettings$Global;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userId"    # I

    .prologue
    .line 3213
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lmokee/providers/MKSettings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 3128
    sget-object v0, Lmokee/providers/MKSettings$Global;->sNameValueCache:Lmokee/providers/MKSettings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2, p3}, Lmokee/providers/MKSettings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
