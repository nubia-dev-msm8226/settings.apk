.class final Lmokee/providers/MKSettings$Secure$1;
.super Ljava/lang/Object;
.source "MKSettings.java"

# interfaces
.implements Lmokee/providers/MKSettings$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/providers/MKSettings$Secure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final mDelimiter:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2963
    const-string/jumbo v0, "|"

    iput-object v0, p0, Lmokee/providers/MKSettings$Secure$1;->mDelimiter:Ljava/lang/String;

    .line 2962
    return-void
.end method
