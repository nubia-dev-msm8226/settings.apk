.class Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$2;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mToken:[B

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->-wrap0(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;[B)V

    .line 388
    return-void
.end method
