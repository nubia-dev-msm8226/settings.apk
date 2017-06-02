.class public final Lmokee/providers/MKSettings$Secure;
.super Landroid/provider/Settings$NameValueTable;
.source "MKSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/providers/MKSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/providers/MKSettings$Secure$1;,
        Lmokee/providers/MKSettings$Secure$2;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final LEGACY_SECURE_SETTINGS:[Ljava/lang/String;

.field protected static final MOVED_TO_GLOBAL:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAVIGATION_RING_TARGETS:[Ljava/lang/String;

.field public static final PROTECTED_COMPONENTS_MANAGER_VALIDATOR:Lmokee/providers/MKSettings$Validator;

.field public static final PROTECTED_COMPONENTS_VALIDATOR:Lmokee/providers/MKSettings$Validator;

.field public static final VALIDATORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmokee/providers/MKSettings$Validator;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNameValueCache:Lmokee/providers/MKSettings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2203
    const-string/jumbo v0, "content://mksettings/secure"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmokee/providers/MKSettings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 2207
    new-instance v0, Lmokee/providers/MKSettings$NameValueCache;

    .line 2208
    const-string/jumbo v1, "sys.mk_settings_secure_version"

    .line 2209
    sget-object v2, Lmokee/providers/MKSettings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 2210
    const-string/jumbo v3, "GET_secure"

    .line 2211
    const-string/jumbo v4, "PUT_secure"

    .line 2207
    invoke-direct {v0, v1, v2, v3, v4}, Lmokee/providers/MKSettings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmokee/providers/MKSettings$Secure;->sNameValueCache:Lmokee/providers/MKSettings$NameValueCache;

    .line 2216
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v5}, Landroid/util/ArraySet;-><init>(I)V

    sput-object v0, Lmokee/providers/MKSettings$Secure;->MOVED_TO_GLOBAL:Landroid/util/ArraySet;

    .line 2217
    sget-object v0, Lmokee/providers/MKSettings$Secure;->MOVED_TO_GLOBAL:Landroid/util/ArraySet;

    const-string/jumbo v1, "dev_force_show_navbar"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2642
    new-array v0, v8, [Ljava/lang/String;

    .line 2643
    const-string/jumbo v1, "navigation_ring_targets_0"

    aput-object v1, v0, v6

    .line 2644
    const-string/jumbo v1, "navigation_ring_targets_1"

    aput-object v1, v0, v5

    .line 2645
    const-string/jumbo v1, "navigation_ring_targets_2"

    aput-object v1, v0, v7

    .line 2642
    sput-object v0, Lmokee/providers/MKSettings$Secure;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    .line 2916
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    .line 2917
    const-string/jumbo v1, "advanced_mode"

    aput-object v1, v0, v6

    .line 2918
    const-string/jumbo v1, "button_backlight_timeout"

    aput-object v1, v0, v5

    .line 2919
    const-string/jumbo v1, "button_brightness"

    aput-object v1, v0, v7

    .line 2920
    const-string/jumbo v1, "default_theme_components"

    aput-object v1, v0, v8

    .line 2921
    const-string/jumbo v1, "default_theme_package"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2922
    const-string/jumbo v1, "dev_force_show_navbar"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 2923
    const-string/jumbo v1, "keyboard_brightness"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 2924
    const-string/jumbo v1, "power_menu_actions"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 2925
    const-string/jumbo v1, "qs_show_brightness_slider"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 2926
    const-string/jumbo v1, "sysui_qs_tiles"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 2927
    const-string/jumbo v1, "sysui_qs_main_tiles"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 2928
    sget-object v1, Lmokee/providers/MKSettings$Secure;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    aget-object v1, v1, v6

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 2929
    sget-object v1, Lmokee/providers/MKSettings$Secure;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    aget-object v1, v1, v5

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 2930
    sget-object v1, Lmokee/providers/MKSettings$Secure;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    aget-object v1, v1, v7

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 2931
    const-string/jumbo v1, "recents_long_press_activity"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 2932
    const-string/jumbo v1, "adb_notify"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 2933
    const-string/jumbo v1, "adb_port"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 2934
    const-string/jumbo v1, "device_hostname"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 2935
    const-string/jumbo v1, "kill_app_longpress_back"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 2936
    const-string/jumbo v1, "protected_components"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 2937
    const-string/jumbo v1, "live_display_color_matrix"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 2938
    const-string/jumbo v1, "advanced_reboot"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 2939
    const-string/jumbo v1, "theme_prev_boot_api_level"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 2940
    const-string/jumbo v1, "lockscreen_target_actions"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 2941
    const-string/jumbo v1, "ring_home_button_behavior"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 2942
    const-string/jumbo v1, "privacy_guard_default"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 2943
    const-string/jumbo v1, "privacy_guard_notification"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 2944
    const-string/jumbo v1, "development_shortcut"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 2945
    const-string/jumbo v1, "performance_profile"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 2946
    const-string/jumbo v1, "app_perf_profiles_enabled"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 2947
    const-string/jumbo v1, "qs_location_advanced"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 2948
    const-string/jumbo v1, "lockscreen_visualizer"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 2949
    const-string/jumbo v1, "lock_screen_pass_to_security_view"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 2916
    sput-object v0, Lmokee/providers/MKSettings$Secure;->LEGACY_SECURE_SETTINGS:[Ljava/lang/String;

    .line 2962
    new-instance v0, Lmokee/providers/MKSettings$Secure$1;

    invoke-direct {v0}, Lmokee/providers/MKSettings$Secure$1;-><init>()V

    sput-object v0, Lmokee/providers/MKSettings$Secure;->PROTECTED_COMPONENTS_VALIDATOR:Lmokee/providers/MKSettings$Validator;

    .line 2982
    new-instance v0, Lmokee/providers/MKSettings$Secure$2;

    invoke-direct {v0}, Lmokee/providers/MKSettings$Secure$2;-><init>()V

    sput-object v0, Lmokee/providers/MKSettings$Secure;->PROTECTED_COMPONENTS_MANAGER_VALIDATOR:Lmokee/providers/MKSettings$Validator;

    .line 3009
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 3008
    sput-object v0, Lmokee/providers/MKSettings$Secure;->VALIDATORS:Ljava/util/Map;

    .line 3011
    sget-object v0, Lmokee/providers/MKSettings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "protected_components"

    sget-object v2, Lmokee/providers/MKSettings$Secure;->PROTECTED_COMPONENTS_VALIDATOR:Lmokee/providers/MKSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3012
    sget-object v0, Lmokee/providers/MKSettings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "protected_component_managers"

    sget-object v2, Lmokee/providers/MKSettings$Secure;->PROTECTED_COMPONENTS_MANAGER_VALIDATOR:Lmokee/providers/MKSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2202
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2202
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 2328
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lmokee/providers/MKSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

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
    .line 2333
    invoke-static {p0, p1, p3}, Lmokee/providers/MKSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2335
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

    .line 2336
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 2337
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2277
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lmokee/providers/MKSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2283
    sget-object v0, Lmokee/providers/MKSettings$Secure;->MOVED_TO_GLOBAL:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2284
    const-string/jumbo v0, "MKSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has moved from MKSettings.Secure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2285
    const-string/jumbo v2, " to MKSettings.Global, value is unchanged."

    .line 2284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    invoke-static {p0, p1, p2}, Lmokee/providers/MKSettings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2288
    :cond_0
    sget-object v0, Lmokee/providers/MKSettings$Secure;->sNameValueCache:Lmokee/providers/MKSettings$NameValueCache;

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
    .line 2389
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lmokee/providers/MKSettings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

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
    .line 2395
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lmokee/providers/MKSettings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2299
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lmokee/providers/MKSettings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 2305
    sget-object v0, Lmokee/providers/MKSettings$Secure;->MOVED_TO_GLOBAL:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2306
    const-string/jumbo v0, "MKSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has moved from MKSettings.Secure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2307
    const-string/jumbo v2, " to MKSettings.Global, value is unchanged."

    .line 2306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    const/4 v0, 0x0

    return v0

    .line 2310
    :cond_0
    sget-object v0, Lmokee/providers/MKSettings$Secure;->sNameValueCache:Lmokee/providers/MKSettings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2, p3}, Lmokee/providers/MKSettings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
