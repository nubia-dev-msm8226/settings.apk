.class public Lmokee/support/widget/snackbar/layouts/SnackbarLayout;
.super Landroid/widget/LinearLayout;
.source "SnackbarLayout.java"


# instance fields
.field private mMaxHeight:I

.field private mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v0, 0x7fffffff

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput v0, p0, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->mMaxWidth:I

    .line 25
    iput v0, p0, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->mMaxHeight:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v0, 0x7fffffff

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput v0, p0, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->mMaxWidth:I

    .line 25
    iput v0, p0, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->mMaxHeight:I

    .line 37
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 42
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 43
    .local v2, "width":I
    iget v3, p0, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->mMaxWidth:I

    if-lt v3, v2, :cond_0

    .line 48
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 49
    .local v0, "height":I
    iget v3, p0, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->mMaxHeight:I

    if-lt v3, v0, :cond_1

    .line 53
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 54
    return-void

    .line 44
    .end local v0    # "height":I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 45
    .local v1, "mode":I
    iget v3, p0, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->mMaxWidth:I

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 50
    .end local v1    # "mode":I
    .restart local v0    # "height":I
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 51
    .restart local v1    # "mode":I
    iget v3, p0, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->mMaxHeight:I

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I

    .prologue
    .line 62
    iput p1, p0, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->mMaxHeight:I

    .line 63
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->requestLayout()V

    .line 64
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxWidth"    # I

    .prologue
    .line 57
    iput p1, p0, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->mMaxWidth:I

    .line 58
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->requestLayout()V

    .line 59
    return-void
.end method
