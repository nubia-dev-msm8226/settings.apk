.class final Lmokee/providers/MKSettings$InclusiveFloatRangeValidator;
.super Ljava/lang/Object;
.source "MKSettings.java"

# interfaces
.implements Lmokee/providers/MKSettings$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/providers/MKSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InclusiveFloatRangeValidator"
.end annotation


# instance fields
.field private final mMax:F

.field private final mMin:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput p1, p0, Lmokee/providers/MKSettings$InclusiveFloatRangeValidator;->mMin:F

    .line 375
    iput p2, p0, Lmokee/providers/MKSettings$InclusiveFloatRangeValidator;->mMax:F

    .line 373
    return-void
.end method
