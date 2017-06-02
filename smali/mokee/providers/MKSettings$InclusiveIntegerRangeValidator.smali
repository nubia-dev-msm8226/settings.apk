.class final Lmokee/providers/MKSettings$InclusiveIntegerRangeValidator;
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
    name = "InclusiveIntegerRangeValidator"
.end annotation


# instance fields
.field private final mMax:I

.field private final mMin:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput p1, p0, Lmokee/providers/MKSettings$InclusiveIntegerRangeValidator;->mMin:I

    .line 355
    iput p2, p0, Lmokee/providers/MKSettings$InclusiveIntegerRangeValidator;->mMax:I

    .line 353
    return-void
.end method
