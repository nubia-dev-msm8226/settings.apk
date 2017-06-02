.class public Lmokee/support/widget/snackbar/Snackbar;
.super Lmokee/support/widget/snackbar/layouts/SnackbarLayout;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;,
        Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;
    }
.end annotation


# instance fields
.field private mActionClickListener:Lmokee/support/widget/snackbar/listeners/ActionClickListener;

.field private mActionClicked:Z

.field private mActionColor:I

.field private mActionLabel:Ljava/lang/CharSequence;

.field private mActionSwipeListener:Lmokee/support/widget/snackbar/listeners/ActionSwipeListener;

.field private mActionTypeface:Landroid/graphics/Typeface;

.field private mCanSwipeToDismiss:Z

.field private mColor:I

.field private mCustomDuration:J

.field private mDismissAnimated:Z

.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mDisplayFrame:Landroid/graphics/Rect;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mDrawable:I

.field private mDuration:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

.field private mEventListener:Lmokee/support/widget/snackbar/listeners/EventListener;

.field private mIsDismissing:Z

.field private mIsReplacePending:Z

.field private mIsShowing:Z

.field private mIsShowingByReplace:Z

.field private mLineColor:Ljava/lang/Integer;

.field private mMarginBottom:I

.field private mMarginLeft:I

.field private mMarginRight:I

.field private mMarginTop:I

.field private mMaxWidthPercentage:Ljava/lang/Float;

.field private mOffset:I

.field private mPhonePosition:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

.field private mRealDisplaySize:Landroid/graphics/Point;

.field private mRefreshLayoutParamsMarginsRunnable:Ljava/lang/Runnable;

.field private mShouldAllowMultipleActionClicks:Z

.field private mShouldDismissOnActionClicked:Z

.field private mShowAnimated:Z

.field private mSnackbarFinish:J

.field private mSnackbarStart:J

.field private mTargetActivity:Landroid/app/Activity;

.field private mText:Ljava/lang/CharSequence;

.field private mTextColor:I

.field private mTextTypeface:Landroid/graphics/Typeface;

.field private mTimeRemaining:J

.field private mType:Lmokee/support/widget/snackbar/enums/SnackbarType;

.field private mUndefinedColor:I

.field private mUndefinedDrawable:I

.field private mUsePhoneLayout:Z

.field private mWidePosition:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

.field private mWindowInsets:Landroid/graphics/Rect;

.field private snackbarAction:Landroid/widget/TextView;

.field private snackbarText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, -0x1

    const/16 v0, -0x2710

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, p1}, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;-><init>(Landroid/content/Context;)V

    .line 93
    iput v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mUndefinedColor:I

    .line 94
    iput v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mUndefinedDrawable:I

    .line 96
    sget-object v0, Lmokee/support/widget/snackbar/enums/SnackbarType;->MULTI_LINE:Lmokee/support/widget/snackbar/enums/SnackbarType;

    iput-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mType:Lmokee/support/widget/snackbar/enums/SnackbarType;

    .line 97
    sget-object v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;->LENGTH_SHORT:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    iput-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mDuration:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    .line 101
    iget v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mUndefinedColor:I

    iput v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mColor:I

    .line 102
    iget v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mUndefinedColor:I

    iput v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mTextColor:I

    .line 105
    sget-object v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;->BOTTOM:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    iput-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mPhonePosition:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    .line 106
    sget-object v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;->BOTTOM_CENTER:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    iput-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mWidePosition:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    .line 107
    iget v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mUndefinedDrawable:I

    iput v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mDrawable:I

    .line 108
    iput v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mMarginTop:I

    .line 109
    iput v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mMarginBottom:I

    .line 110
    iput v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mMarginLeft:I

    .line 111
    iput v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mMarginRight:I

    .line 114
    iput-wide v4, p0, Lmokee/support/widget/snackbar/Snackbar;->mTimeRemaining:J

    .line 116
    iget v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mUndefinedColor:I

    iput v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mActionColor:I

    .line 117
    iput-boolean v2, p0, Lmokee/support/widget/snackbar/Snackbar;->mShowAnimated:Z

    .line 118
    iput-boolean v2, p0, Lmokee/support/widget/snackbar/Snackbar;->mDismissAnimated:Z

    .line 119
    iput-boolean v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsReplacePending:Z

    .line 120
    iput-boolean v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsShowingByReplace:Z

    .line 121
    iput-wide v4, p0, Lmokee/support/widget/snackbar/Snackbar;->mCustomDuration:J

    .line 126
    iput-boolean v2, p0, Lmokee/support/widget/snackbar/Snackbar;->mShouldDismissOnActionClicked:Z

    .line 130
    iput-boolean v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsShowing:Z

    .line 131
    iput-boolean v2, p0, Lmokee/support/widget/snackbar/Snackbar;->mCanSwipeToDismiss:Z

    .line 132
    iput-boolean v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsDismissing:Z

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mWindowInsets:Landroid/graphics/Rect;

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mDisplayFrame:Landroid/graphics/Rect;

    .line 135
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mDisplaySize:Landroid/graphics/Point;

    .line 136
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mRealDisplaySize:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mMaxWidthPercentage:Ljava/lang/Float;

    .line 140
    new-instance v0, Lmokee/support/widget/snackbar/Snackbar$1;

    invoke-direct {v0, p0}, Lmokee/support/widget/snackbar/Snackbar$1;-><init>(Lmokee/support/widget/snackbar/Snackbar;)V

    iput-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mDismissRunnable:Ljava/lang/Runnable;

    .line 146
    new-instance v0, Lmokee/support/widget/snackbar/Snackbar$2;

    invoke-direct {v0, p0}, Lmokee/support/widget/snackbar/Snackbar$2;-><init>(Lmokee/support/widget/snackbar/Snackbar;)V

    iput-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mRefreshLayoutParamsMarginsRunnable:Ljava/lang/Runnable;

    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v0, Lmokee/support/widget/snackbar/SnackbarHelperChildViewJB;

    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmokee/support/widget/snackbar/SnackbarHelperChildViewJB;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lmokee/support/widget/snackbar/Snackbar;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lmokee/support/widget/snackbar/Snackbar;)Lmokee/support/widget/snackbar/listeners/ActionClickListener;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mActionClickListener:Lmokee/support/widget/snackbar/listeners/ActionClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lmokee/support/widget/snackbar/Snackbar;)Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsDismissing:Z

    return v0
.end method

.method static synthetic access$10(Lmokee/support/widget/snackbar/Snackbar;J)V
    .locals 1

    .prologue
    .line 113
    iput-wide p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mSnackbarFinish:J

    return-void
.end method

.method static synthetic access$11(Lmokee/support/widget/snackbar/Snackbar;)J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mTimeRemaining:J

    return-wide v0
.end method

.method static synthetic access$12(Lmokee/support/widget/snackbar/Snackbar;)J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mSnackbarFinish:J

    return-wide v0
.end method

.method static synthetic access$13(Lmokee/support/widget/snackbar/Snackbar;)J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mSnackbarStart:J

    return-wide v0
.end method

.method static synthetic access$14(Lmokee/support/widget/snackbar/Snackbar;J)V
    .locals 1

    .prologue
    .line 114
    iput-wide p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mTimeRemaining:J

    return-void
.end method

.method static synthetic access$15(Lmokee/support/widget/snackbar/Snackbar;J)V
    .locals 1

    .prologue
    .line 992
    invoke-direct {p0, p1, p2}, Lmokee/support/widget/snackbar/Snackbar;->startTimer(J)V

    return-void
.end method

.method static synthetic access$16(Lmokee/support/widget/snackbar/Snackbar;)Lmokee/support/widget/snackbar/listeners/EventListener;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mEventListener:Lmokee/support/widget/snackbar/listeners/EventListener;

    return-object v0
.end method

.method static synthetic access$17(Lmokee/support/widget/snackbar/Snackbar;)Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsShowingByReplace:Z

    return v0
.end method

.method static synthetic access$18(Lmokee/support/widget/snackbar/Snackbar;)Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mShowAnimated:Z

    return v0
.end method

.method static synthetic access$19(Lmokee/support/widget/snackbar/Snackbar;Z)V
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsShowingByReplace:Z

    return-void
.end method

.method static synthetic access$2(Lmokee/support/widget/snackbar/Snackbar;)Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mActionClicked:Z

    return v0
.end method

.method static synthetic access$20(Lmokee/support/widget/snackbar/Snackbar;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->snackbarText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$21(Lmokee/support/widget/snackbar/Snackbar;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 947
    invoke-direct {p0, p1}, Lmokee/support/widget/snackbar/Snackbar;->focusForAccessibility(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$22(Lmokee/support/widget/snackbar/Snackbar;J)V
    .locals 1

    .prologue
    .line 112
    iput-wide p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mSnackbarStart:J

    return-void
.end method

.method static synthetic access$23(Lmokee/support/widget/snackbar/Snackbar;)Z
    .locals 1

    .prologue
    .line 958
    invoke-direct {p0}, Lmokee/support/widget/snackbar/Snackbar;->shouldStartTimer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$24(Lmokee/support/widget/snackbar/Snackbar;)V
    .locals 0

    .prologue
    .line 988
    invoke-direct {p0}, Lmokee/support/widget/snackbar/Snackbar;->startTimer()V

    return-void
.end method

.method static synthetic access$25(Lmokee/support/widget/snackbar/Snackbar;)V
    .locals 0

    .prologue
    .line 1048
    invoke-direct {p0}, Lmokee/support/widget/snackbar/Snackbar;->finish()V

    return-void
.end method

.method static synthetic access$3(Lmokee/support/widget/snackbar/Snackbar;)Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mShouldAllowMultipleActionClicks:Z

    return v0
.end method

.method static synthetic access$4(Lmokee/support/widget/snackbar/Snackbar;Z)V
    .locals 0

    .prologue
    .line 125
    iput-boolean p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mActionClicked:Z

    return-void
.end method

.method static synthetic access$5(Lmokee/support/widget/snackbar/Snackbar;)Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mShouldDismissOnActionClicked:Z

    return v0
.end method

.method static synthetic access$6(Lmokee/support/widget/snackbar/Snackbar;)Lmokee/support/widget/snackbar/listeners/ActionSwipeListener;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mActionSwipeListener:Lmokee/support/widget/snackbar/listeners/ActionSwipeListener;

    return-object v0
.end method

.method static synthetic access$7(Lmokee/support/widget/snackbar/Snackbar;Z)V
    .locals 0

    .prologue
    .line 1005
    invoke-direct {p0, p1}, Lmokee/support/widget/snackbar/Snackbar;->dismiss(Z)V

    return-void
.end method

.method static synthetic access$8(Lmokee/support/widget/snackbar/Snackbar;)Z
    .locals 1

    .prologue
    .line 962
    invoke-direct {p0}, Lmokee/support/widget/snackbar/Snackbar;->isIndefiniteDuration()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lmokee/support/widget/snackbar/Snackbar;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mDismissRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static createMarginLayoutParams(Landroid/view/ViewGroup;IILmokee/support/widget/snackbar/Snackbar$SnackbarPosition;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 5
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "position"    # Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    .prologue
    const/4 v4, -0x1

    .line 581
    instance-of v3, p0, Landroid/widget/FrameLayout;

    if-nez v3, :cond_0

    .line 585
    instance-of v3, p0, Landroid/widget/RelativeLayout;

    if-nez v3, :cond_1

    .line 594
    instance-of v3, p0, Landroid/widget/LinearLayout;

    if-nez v3, :cond_3

    .line 599
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Requires FrameLayout or RelativeLayout for the parent of Snackbar"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 582
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 583
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p3}, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;->getLayoutGravity()I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 584
    return-object v0

    .line 586
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 588
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v3, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;->TOP:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    if-eq p3, v3, :cond_2

    const/16 v3, 0xc

    .line 591
    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 593
    :goto_0
    return-object v2

    :cond_2
    const/16 v3, 0xa

    .line 589
    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 595
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 596
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p3}, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;->getLayoutGravity()I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 597
    return-object v1
.end method

.method private dismiss(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 1006
    iget-boolean v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsDismissing:Z

    if-nez v1, :cond_1

    .line 1010
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsDismissing:Z

    .line 1012
    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mEventListener:Lmokee/support/widget/snackbar/listeners/EventListener;

    if-nez v1, :cond_2

    .line 1020
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    .line 1025
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmokee/support/widget/snackbar/Snackbar;->mPhonePosition:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    invoke-static {v2}, Lmokee/support/widget/snackbar/Snackbar;->getOutAnimationResource(Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1026
    .local v0, "slideOut":Landroid/view/animation/Animation;
    new-instance v1, Lmokee/support/widget/snackbar/Snackbar$8;

    invoke-direct {v1, p0}, Lmokee/support/widget/snackbar/Snackbar$8;-><init>(Lmokee/support/widget/snackbar/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1045
    invoke-virtual {p0, v0}, Lmokee/support/widget/snackbar/Snackbar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1046
    return-void

    .line 1007
    .end local v0    # "slideOut":Landroid/view/animation/Animation;
    :cond_1
    return-void

    .line 1012
    :cond_2
    iget-boolean v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsShowing:Z

    if-eqz v1, :cond_0

    .line 1013
    iget-boolean v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsReplacePending:Z

    if-nez v1, :cond_3

    .line 1016
    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mEventListener:Lmokee/support/widget/snackbar/listeners/EventListener;

    invoke-interface {v1, p0}, Lmokee/support/widget/snackbar/listeners/EventListener;->onDismiss(Lmokee/support/widget/snackbar/Snackbar;)V

    goto :goto_0

    .line 1014
    :cond_3
    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mEventListener:Lmokee/support/widget/snackbar/listeners/EventListener;

    invoke-interface {v1, p0}, Lmokee/support/widget/snackbar/listeners/EventListener;->onDismissByReplace(Lmokee/support/widget/snackbar/Snackbar;)V

    goto :goto_0

    .line 1021
    :cond_4
    invoke-direct {p0}, Lmokee/support/widget/snackbar/Snackbar;->finish()V

    .line 1022
    return-void
.end method

.method private static dpToPx(IF)I
    .locals 2
    .param p0, "dp"    # I
    .param p1, "scale"    # F

    .prologue
    .line 795
    int-to-float v0, p0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1049
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->clearAnimation()V

    .line 1050
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1051
    .local v0, "parent":Landroid/view/ViewGroup;
    if-nez v0, :cond_1

    .line 1054
    :goto_0
    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mEventListener:Lmokee/support/widget/snackbar/listeners/EventListener;

    if-nez v1, :cond_2

    .line 1057
    :cond_0
    :goto_1
    iput-boolean v2, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsShowing:Z

    .line 1058
    iput-boolean v2, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsDismissing:Z

    .line 1059
    iput-boolean v2, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsReplacePending:Z

    .line 1060
    iput-object v3, p0, Lmokee/support/widget/snackbar/Snackbar;->mTargetActivity:Landroid/app/Activity;

    .line 1061
    return-void

    .line 1052
    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 1054
    :cond_2
    iget-boolean v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsShowing:Z

    if-eqz v1, :cond_0

    .line 1055
    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mEventListener:Lmokee/support/widget/snackbar/listeners/EventListener;

    invoke-interface {v1, p0}, Lmokee/support/widget/snackbar/listeners/EventListener;->onDismissed(Lmokee/support/widget/snackbar/Snackbar;)V

    goto :goto_1
.end method

.method private focusForAccessibility(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 948
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 950
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/View;)V

    .line 952
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    :goto_0
    return-void

    .line 953
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getInAnimationResource(Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;)I
    .locals 1
    .param p0, "snackbarPosition"    # Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;
    .annotation build Landroid/support/annotation/AnimRes;
    .end annotation

    .prologue
    .line 1225
    sget-object v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;->TOP:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    if-eq p0, v0, :cond_0

    sget v0, Lmokee/support/widget/snackbar/R$anim;->sb_bottom_in:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lmokee/support/widget/snackbar/R$anim;->sb_top_in:I

    goto :goto_0
.end method

.method public static getOutAnimationResource(Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;)I
    .locals 1
    .param p0, "snackbarPosition"    # Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;
    .annotation build Landroid/support/annotation/AnimRes;
    .end annotation

    .prologue
    .line 1235
    sget-object v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;->TOP:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    if-eq p0, v0, :cond_0

    sget v0, Lmokee/support/widget/snackbar/R$anim;->sb_bottom_out:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lmokee/support/widget/snackbar/R$anim;->sb_top_out:I

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetActivity"    # Landroid/app/Activity;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "usePhoneLayout"    # Z

    .prologue
    .line 612
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 613
    sget v11, Lmokee/support/widget/snackbar/R$layout;->sb_template:I

    const/4 v12, 0x1

    invoke-virtual {v10, v11, p0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 612
    check-cast v5, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;

    .local v5, "layout":Lmokee/support/widget/snackbar/layouts/SnackbarLayout;
    const/4 v10, 0x1

    .line 614
    invoke-virtual {v5, v10}, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->setOrientation(I)V

    .line 616
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 618
    .local v8, "res":Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getStatusBarColor()I

    move-result v6

    .line 619
    .local v6, "mPrimaryColor":I
    iget v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mColor:I

    iget v11, p0, Lmokee/support/widget/snackbar/Snackbar;->mUndefinedColor:I

    if-ne v10, v11, :cond_2

    const/high16 v10, -0x1000000

    if-ne v6, v10, :cond_0

    sget v10, Lmokee/support/widget/snackbar/R$color;->sb_background:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .end local v6    # "mPrimaryColor":I
    :cond_0
    :goto_0
    iput v6, p0, Lmokee/support/widget/snackbar/Snackbar;->mColor:I

    .line 620
    sget v10, Lmokee/support/widget/snackbar/R$dimen;->sb_offset:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mOffset:I

    .line 621
    move/from16 v0, p4

    iput-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mUsePhoneLayout:Z

    .line 622
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v9, v10, Landroid/util/DisplayMetrics;->density:F

    .line 624
    .local v9, "scale":F
    sget v10, Lmokee/support/widget/snackbar/R$id;->sb_divider:I

    invoke-virtual {v5, v10}, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 627
    .local v3, "divider":Landroid/view/View;
    iget-boolean v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mUsePhoneLayout:Z

    if-nez v10, :cond_3

    .line 642
    sget-object v10, Lmokee/support/widget/snackbar/enums/SnackbarType;->SINGLE_LINE:Lmokee/support/widget/snackbar/enums/SnackbarType;

    iput-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mType:Lmokee/support/widget/snackbar/enums/SnackbarType;

    .line 643
    sget v10, Lmokee/support/widget/snackbar/R$dimen;->sb_min_width:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v5, v10}, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->setMinimumWidth(I)V

    .line 645
    iget-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mMaxWidthPercentage:Ljava/lang/Float;

    if-eqz v10, :cond_5

    .line 647
    iget-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mMaxWidthPercentage:Ljava/lang/Float;

    invoke-static {p2, v10}, Lmokee/support/widget/snackbar/DisplayCompat;->getWidthFromPercentage(Landroid/app/Activity;Ljava/lang/Float;)I

    move-result v10

    .line 644
    :goto_1
    invoke-virtual {v5, v10}, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->setMaxWidth(I)V

    .line 648
    sget v10, Lmokee/support/widget/snackbar/R$drawable;->sb_bg:I

    invoke-virtual {v5, v10}, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->setBackgroundResource(I)V

    .line 649
    invoke-virtual {v5}, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 650
    .local v1, "bg":Landroid/graphics/drawable/GradientDrawable;
    iget v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mColor:I

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v10, -0x2

    .line 653
    iget-object v11, p0, Lmokee/support/widget/snackbar/Snackbar;->mType:Lmokee/support/widget/snackbar/enums/SnackbarType;

    invoke-virtual {v11}, Lmokee/support/widget/snackbar/enums/SnackbarType;->getMaxHeight()I

    move-result v11

    invoke-static {v11, v9}, Lmokee/support/widget/snackbar/Snackbar;->dpToPx(IF)I

    move-result v11

    iget-object v12, p0, Lmokee/support/widget/snackbar/Snackbar;->mWidePosition:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    .line 652
    move-object/from16 v0, p3

    invoke-static {v0, v10, v11, v12}, Lmokee/support/widget/snackbar/Snackbar;->createMarginLayoutParams(Landroid/view/ViewGroup;IILmokee/support/widget/snackbar/Snackbar$SnackbarPosition;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v7

    .line 655
    .local v7, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mLineColor:Ljava/lang/Integer;

    if-nez v10, :cond_6

    const/16 v10, 0x8

    .line 660
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 664
    .end local v1    # "bg":Landroid/graphics/drawable/GradientDrawable;
    :goto_2
    iget v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mDrawable:I

    iget v11, p0, Lmokee/support/widget/snackbar/Snackbar;->mUndefinedDrawable:I

    if-ne v10, v11, :cond_7

    .line 667
    :goto_3
    sget v10, Lmokee/support/widget/snackbar/R$id;->sb_text:I

    invoke-virtual {v5, v10}, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->snackbarText:Landroid/widget/TextView;

    .line 668
    iget-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->snackbarText:Landroid/widget/TextView;

    iget-object v11, p0, Lmokee/support/widget/snackbar/Snackbar;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->snackbarText:Landroid/widget/TextView;

    iget-object v11, p0, Lmokee/support/widget/snackbar/Snackbar;->mTextTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 671
    iget v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mTextColor:I

    iget v11, p0, Lmokee/support/widget/snackbar/Snackbar;->mUndefinedColor:I

    if-ne v10, v11, :cond_8

    .line 675
    :goto_4
    iget-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->snackbarText:Landroid/widget/TextView;

    iget-object v11, p0, Lmokee/support/widget/snackbar/Snackbar;->mType:Lmokee/support/widget/snackbar/enums/SnackbarType;

    invoke-virtual {v11}, Lmokee/support/widget/snackbar/enums/SnackbarType;->getMaxLines()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 677
    sget v10, Lmokee/support/widget/snackbar/R$id;->sb_action:I

    invoke-virtual {v5, v10}, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->snackbarAction:Landroid/widget/TextView;

    .line 678
    iget-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mActionLabel:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 708
    iget-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->snackbarAction:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 711
    :goto_5
    sget v10, Lmokee/support/widget/snackbar/R$id;->sb_inner:I

    invoke-virtual {v5, v10}, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 712
    .local v4, "inner":Landroid/view/View;
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/view/View;->setClickable(Z)V

    .line 714
    iget-boolean v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mCanSwipeToDismiss:Z

    if-nez v10, :cond_b

    .line 750
    :cond_1
    :goto_6
    return-object v7

    .line 619
    .end local v3    # "divider":Landroid/view/View;
    .end local v4    # "inner":Landroid/view/View;
    .end local v7    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v9    # "scale":F
    .restart local v6    # "mPrimaryColor":I
    :cond_2
    iget v6, p0, Lmokee/support/widget/snackbar/Snackbar;->mColor:I

    goto/16 :goto_0

    .line 629
    .end local v6    # "mPrimaryColor":I
    .restart local v3    # "divider":Landroid/view/View;
    .restart local v9    # "scale":F
    :cond_3
    iget-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mType:Lmokee/support/widget/snackbar/enums/SnackbarType;

    invoke-virtual {v10}, Lmokee/support/widget/snackbar/enums/SnackbarType;->getMinHeight()I

    move-result v10

    invoke-static {v10, v9}, Lmokee/support/widget/snackbar/Snackbar;->dpToPx(IF)I

    move-result v10

    invoke-virtual {v5, v10}, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->setMinimumHeight(I)V

    .line 630
    iget-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mType:Lmokee/support/widget/snackbar/enums/SnackbarType;

    invoke-virtual {v10}, Lmokee/support/widget/snackbar/enums/SnackbarType;->getMaxHeight()I

    move-result v10

    invoke-static {v10, v9}, Lmokee/support/widget/snackbar/Snackbar;->dpToPx(IF)I

    move-result v10

    invoke-virtual {v5, v10}, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->setMaxHeight(I)V

    .line 631
    iget v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mColor:I

    invoke-virtual {v5, v10}, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->setBackgroundColor(I)V

    const/4 v10, -0x1

    const/4 v11, -0x2

    .line 633
    iget-object v12, p0, Lmokee/support/widget/snackbar/Snackbar;->mPhonePosition:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    .line 632
    move-object/from16 v0, p3

    invoke-static {v0, v10, v11, v12}, Lmokee/support/widget/snackbar/Snackbar;->createMarginLayoutParams(Landroid/view/ViewGroup;IILmokee/support/widget/snackbar/Snackbar$SnackbarPosition;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v7

    .line 635
    .restart local v7    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mLineColor:Ljava/lang/Integer;

    if-nez v10, :cond_4

    const/16 v10, 0x8

    .line 638
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 636
    :cond_4
    iget-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mLineColor:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 646
    .end local v7    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    sget v10, Lmokee/support/widget/snackbar/R$dimen;->sb_max_width:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    goto/16 :goto_1

    .line 656
    .restart local v1    # "bg":Landroid/graphics/drawable/GradientDrawable;
    .restart local v7    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    sget v10, Lmokee/support/widget/snackbar/R$drawable;->sb_divider_bg:I

    invoke-virtual {v3, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 657
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 658
    .local v2, "dbg":Landroid/graphics/drawable/GradientDrawable;
    iget-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mLineColor:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_2

    .line 665
    .end local v1    # "bg":Landroid/graphics/drawable/GradientDrawable;
    .end local v2    # "dbg":Landroid/graphics/drawable/GradientDrawable;
    :cond_7
    iget v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mDrawable:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v5, v10}, Lmokee/support/widget/snackbar/Snackbar;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 672
    :cond_8
    iget-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->snackbarText:Landroid/widget/TextView;

    iget v11, p0, Lmokee/support/widget/snackbar/Snackbar;->mTextColor:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 679
    :cond_9
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->requestLayout()V

    .line 680
    iget-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->snackbarAction:Landroid/widget/TextView;

    iget-object v11, p0, Lmokee/support/widget/snackbar/Snackbar;->mActionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->snackbarAction:Landroid/widget/TextView;

    iget-object v11, p0, Lmokee/support/widget/snackbar/Snackbar;->mActionTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 683
    iget v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mActionColor:I

    iget v11, p0, Lmokee/support/widget/snackbar/Snackbar;->mUndefinedColor:I

    if-ne v10, v11, :cond_a

    .line 687
    :goto_7
    iget-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->snackbarAction:Landroid/widget/TextView;

    new-instance v11, Lmokee/support/widget/snackbar/Snackbar$4;

    invoke-direct {v11, p0}, Lmokee/support/widget/snackbar/Snackbar$4;-><init>(Lmokee/support/widget/snackbar/Snackbar;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    iget-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->snackbarAction:Landroid/widget/TextView;

    iget-object v11, p0, Lmokee/support/widget/snackbar/Snackbar;->mType:Lmokee/support/widget/snackbar/enums/SnackbarType;

    invoke-virtual {v11}, Lmokee/support/widget/snackbar/enums/SnackbarType;->getMaxLines()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_5

    .line 684
    :cond_a
    iget-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->snackbarAction:Landroid/widget/TextView;

    iget v11, p0, Lmokee/support/widget/snackbar/Snackbar;->mActionColor:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 714
    .restart local v4    # "inner":Landroid/view/View;
    :cond_b
    sget v10, Lmokee/support/widget/snackbar/R$bool;->sb_is_swipeable:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 715
    new-instance v10, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;

    .line 716
    new-instance v11, Lmokee/support/widget/snackbar/Snackbar$5;

    invoke-direct {v11, p0}, Lmokee/support/widget/snackbar/Snackbar$5;-><init>(Lmokee/support/widget/snackbar/Snackbar;)V

    const/4 v12, 0x0

    invoke-direct {v10, p0, v12, v11}, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;-><init>(Landroid/view/View;Ljava/lang/Object;Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;)V

    .line 715
    invoke-virtual {v4, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_6
.end method

.method private isIndefiniteDuration()Z
    .locals 4

    .prologue
    .line 963
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->getDuration()J

    move-result-wide v0

    sget-object v2, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;->LENGTH_INDEFINITE:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    invoke-virtual {v2}, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isNavigationBarHidden(Landroid/view/ViewGroup;)Z
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 969
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 973
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowSystemUiVisibility()I

    move-result v0

    .line 974
    .local v0, "viewFlags":I
    and-int/lit16 v1, v0, 0x200

    const/16 v2, 0x200

    if-eq v1, v2, :cond_1

    return v3

    .line 970
    .end local v0    # "viewFlags":I
    :cond_0
    return v3

    .line 974
    .restart local v0    # "viewFlags":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private isNavigationBarTranslucent(Landroid/app/Activity;)Z
    .locals 4
    .param p1, "targetActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 980
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 984
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .local v0, "flags":I
    const/high16 v1, 0x8000000

    .line 985
    and-int/2addr v1, v0

    if-nez v1, :cond_1

    return v3

    .line 981
    .end local v0    # "flags":I
    :cond_0
    return v3

    .line 985
    .restart local v0    # "flags":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1248
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1250
    :goto_0
    return-void

    .line 1246
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private shouldStartTimer()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 959
    invoke-direct {p0}, Lmokee/support/widget/snackbar/Snackbar;->isIndefiniteDuration()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static shouldUsePhoneLayout(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 604
    if-eqz p0, :cond_0

    .line 607
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmokee/support/widget/snackbar/R$bool;->sb_is_phone:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0

    .line 605
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private showInternal(Landroid/app/Activity;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "targetActivity"    # Landroid/app/Activity;
    .param p2, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 858
    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 862
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_1

    .line 871
    :cond_0
    invoke-virtual {p3, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->bringToFront()V

    .line 876
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_3

    .line 881
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsShowing:Z

    .line 882
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mTargetActivity:Landroid/app/Activity;

    .line 884
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lmokee/support/widget/snackbar/Snackbar$6;

    invoke-direct {v5, p0}, Lmokee/support/widget/snackbar/Snackbar$6;-><init>(Lmokee/support/widget/snackbar/Snackbar;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 903
    iget-boolean v4, p0, Lmokee/support/widget/snackbar/Snackbar;->mShowAnimated:Z

    if-eqz v4, :cond_4

    .line 910
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lmokee/support/widget/snackbar/Snackbar;->mPhonePosition:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    invoke-static {v5}, Lmokee/support/widget/snackbar/Snackbar;->getInAnimationResource(Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 911
    .local v3, "slideIn":Landroid/view/animation/Animation;
    new-instance v4, Lmokee/support/widget/snackbar/Snackbar$7;

    invoke-direct {v4, p0}, Lmokee/support/widget/snackbar/Snackbar$7;-><init>(Lmokee/support/widget/snackbar/Snackbar;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 944
    invoke-virtual {p0, v3}, Lmokee/support/widget/snackbar/Snackbar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 945
    return-void

    .end local v3    # "slideIn":Landroid/view/animation/Animation;
    :cond_1
    const/4 v1, 0x0

    .line 863
    .local v1, "i":I
    :goto_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 864
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 865
    .local v2, "otherChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v0

    .line 866
    .local v0, "elvation":F
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->getElevation()F

    move-result v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    .line 867
    invoke-virtual {p0, v0}, Lmokee/support/widget/snackbar/Snackbar;->setElevation(F)V

    .line 863
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 877
    .end local v0    # "elvation":F
    .end local v1    # "i":I
    .end local v2    # "otherChild":Landroid/view/View;
    :cond_3
    invoke-virtual {p3}, Landroid/view/ViewGroup;->requestLayout()V

    .line 878
    invoke-virtual {p3}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    .line 904
    :cond_4
    invoke-direct {p0}, Lmokee/support/widget/snackbar/Snackbar;->shouldStartTimer()Z

    move-result v4

    if-nez v4, :cond_5

    .line 907
    :goto_2
    return-void

    .line 905
    :cond_5
    invoke-direct {p0}, Lmokee/support/widget/snackbar/Snackbar;->startTimer()V

    goto :goto_2
.end method

.method private startTimer()V
    .locals 4

    .prologue
    .line 989
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->getDuration()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lmokee/support/widget/snackbar/Snackbar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 990
    return-void
.end method

.method private startTimer(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 993
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lmokee/support/widget/snackbar/Snackbar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 994
    return-void
.end method

.method private updateWindowInsets(Landroid/app/Activity;Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "targetActivity"    # Landroid/app/Activity;
    .param p2, "outInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v11, 0x0

    .line 755
    iput v11, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v11, 0x0

    iput v11, p2, Landroid/graphics/Rect;->right:I

    const/4 v11, 0x0

    iput v11, p2, Landroid/graphics/Rect;->top:I

    const/4 v11, 0x0

    iput v11, p2, Landroid/graphics/Rect;->left:I

    .line 757
    if-eqz p1, :cond_0

    .line 761
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 762
    .local v0, "decorView":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 764
    .local v3, "display":Landroid/view/Display;
    invoke-direct {p0, p1}, Lmokee/support/widget/snackbar/Snackbar;->isNavigationBarTranslucent(Landroid/app/Activity;)Z

    move-result v5

    .line 765
    .local v5, "isTranslucent":Z
    invoke-direct {p0, v0}, Lmokee/support/widget/snackbar/Snackbar;->isNavigationBarHidden(Landroid/view/ViewGroup;)Z

    move-result v4

    .line 767
    .local v4, "isHidden":Z
    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mDisplayFrame:Landroid/graphics/Rect;

    .line 768
    .local v1, "dispFrame":Landroid/graphics/Rect;
    iget-object v10, p0, Lmokee/support/widget/snackbar/Snackbar;->mRealDisplaySize:Landroid/graphics/Point;

    .line 769
    .local v10, "realDispSize":Landroid/graphics/Point;
    iget-object v2, p0, Lmokee/support/widget/snackbar/Snackbar;->mDisplaySize:Landroid/graphics/Point;

    .line 771
    .local v2, "dispSize":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 773
    invoke-static {v3, v10}, Lmokee/support/widget/snackbar/DisplayCompat;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 774
    invoke-static {v3, v2}, Lmokee/support/widget/snackbar/DisplayCompat;->getSize(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 776
    iget v11, v2, Landroid/graphics/Point;->x:I

    iget v12, v10, Landroid/graphics/Point;->x:I

    if-lt v11, v12, :cond_1

    .line 783
    iget v11, v2, Landroid/graphics/Point;->y:I

    iget v12, v10, Landroid/graphics/Point;->y:I

    if-lt v11, v12, :cond_4

    .line 792
    :goto_0
    return-void

    .line 758
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    .end local v1    # "dispFrame":Landroid/graphics/Rect;
    .end local v2    # "dispSize":Landroid/graphics/Point;
    .end local v3    # "display":Landroid/view/Display;
    .end local v4    # "isHidden":Z
    .end local v5    # "isTranslucent":Z
    .end local v10    # "realDispSize":Landroid/graphics/Point;
    :cond_0
    return-void

    .line 778
    .restart local v0    # "decorView":Landroid/view/ViewGroup;
    .restart local v1    # "dispFrame":Landroid/graphics/Rect;
    .restart local v2    # "dispSize":Landroid/graphics/Point;
    .restart local v3    # "display":Landroid/view/Display;
    .restart local v4    # "isHidden":Z
    .restart local v5    # "isTranslucent":Z
    .restart local v10    # "realDispSize":Landroid/graphics/Point;
    :cond_1
    if-eqz v5, :cond_3

    .line 779
    :cond_2
    iget v11, v10, Landroid/graphics/Point;->x:I

    iget v12, v2, Landroid/graphics/Point;->x:I

    sub-int v7, v11, v12

    .line 780
    .local v7, "navBarWidth":I
    iget v11, v10, Landroid/graphics/Point;->x:I

    iget v12, v1, Landroid/graphics/Rect;->right:I

    sub-int v9, v11, v12

    .line 781
    .local v9, "overlapWidth":I
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 778
    .end local v7    # "navBarWidth":I
    .end local v9    # "overlapWidth":I
    :cond_3
    if-nez v4, :cond_2

    goto :goto_0

    .line 786
    :cond_4
    if-eqz v5, :cond_6

    .line 787
    :cond_5
    iget v11, v10, Landroid/graphics/Point;->y:I

    iget v12, v2, Landroid/graphics/Point;->y:I

    sub-int v6, v11, v12

    .line 788
    .local v6, "navBarHeight":I
    iget v11, v10, Landroid/graphics/Point;->y:I

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v11, v12

    .line 789
    .local v8, "overlapHeight":I
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 786
    .end local v6    # "navBarHeight":I
    .end local v8    # "overlapHeight":I
    :cond_6
    if-nez v4, :cond_5

    goto :goto_0
.end method

.method public static with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    new-instance v0, Lmokee/support/widget/snackbar/Snackbar;

    invoke-direct {v0, p0}, Lmokee/support/widget/snackbar/Snackbar;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public actionColor(I)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "actionColor"    # I

    .prologue
    .line 372
    iput p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mActionColor:I

    .line 373
    return-object p0
.end method

.method public actionColorResource(I)Lmokee/support/widget/snackbar/Snackbar;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 384
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmokee/support/widget/snackbar/Snackbar;->actionColor(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public actionLabel(I)Lmokee/support/widget/snackbar/Snackbar;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 298
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmokee/support/widget/snackbar/Snackbar;->actionLabel(Ljava/lang/CharSequence;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public actionLabel(Ljava/lang/CharSequence;)Lmokee/support/widget/snackbar/Snackbar;
    .locals 2
    .param p1, "actionButtonLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 283
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mActionLabel:Ljava/lang/CharSequence;

    .line 284
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->snackbarAction:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-object p0

    .line 285
    :cond_0
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->snackbarAction:Landroid/widget/TextView;

    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mActionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public actionLabelTypeface(Landroid/graphics/Typeface;)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 576
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mActionTypeface:Landroid/graphics/Typeface;

    .line 577
    return-object p0
.end method

.method public actionListener(Lmokee/support/widget/snackbar/listeners/ActionClickListener;)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "listener"    # Lmokee/support/widget/snackbar/listeners/ActionClickListener;

    .prologue
    .line 407
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mActionClickListener:Lmokee/support/widget/snackbar/listeners/ActionClickListener;

    .line 408
    return-object p0
.end method

.method public allowMultipleActionClicks(Z)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "shouldAllow"    # Z

    .prologue
    .line 432
    iput-boolean p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mShouldAllowMultipleActionClicks:Z

    .line 433
    return-object p0
.end method

.method public animation(Z)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "withAnimation"    # Z

    .prologue
    .line 454
    iput-boolean p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mShowAnimated:Z

    .line 455
    iput-boolean p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mDismissAnimated:Z

    .line 456
    return-object p0
.end method

.method public attachToAbsListView(Landroid/widget/AbsListView;)Lmokee/support/widget/snackbar/Snackbar;
    .locals 1
    .param p1, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 523
    new-instance v0, Lmokee/support/widget/snackbar/Snackbar$3;

    invoke-direct {v0, p0}, Lmokee/support/widget/snackbar/Snackbar$3;-><init>(Lmokee/support/widget/snackbar/Snackbar;)V

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 535
    return-object p0
.end method

.method public attachToRecyclerView(Landroid/view/View;)Lmokee/support/widget/snackbar/Snackbar;
    .locals 3
    .param p1, "recyclerView"    # Landroid/view/View;

    .prologue
    :try_start_0
    const-string/jumbo v1, "android.support.v7.widget.RecyclerView"

    .line 547
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 550
    invoke-static {p0, p1}, Lmokee/support/widget/snackbar/RecyclerUtil;->setScrollListener(Lmokee/support/widget/snackbar/Snackbar;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    return-object p0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "ignored":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "RecyclerView not found. Did you add it to your dependencies?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public backgroundDrawable(I)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 229
    iput p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mDrawable:I

    .line 230
    return-object p0
.end method

.method public color(I)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 208
    iput p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mColor:I

    .line 209
    return-object p0
.end method

.method public colorResource(I)Lmokee/support/widget/snackbar/Snackbar;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 219
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmokee/support/widget/snackbar/Snackbar;->color(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 1002
    iget-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mDismissAnimated:Z

    invoke-direct {p0, v0}, Lmokee/support/widget/snackbar/Snackbar;->dismiss(Z)V

    .line 1003
    return-void
.end method

.method public dismissAnimation(Z)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "withAnimation"    # Z

    .prologue
    .line 477
    iput-boolean p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mDismissAnimated:Z

    .line 478
    return-object p0
.end method

.method public dismissByReplace()V
    .locals 1

    .prologue
    .line 997
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsReplacePending:Z

    .line 998
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->dismiss()V

    .line 999
    return-void
.end method

.method public dismissOnActionClicked(Z)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "shouldDismiss"    # Z

    .prologue
    .line 394
    iput-boolean p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mShouldDismissOnActionClicked:Z

    .line 395
    return-object p0
.end method

.method dispatchOnWindowSystemUiVisibilityChangedCompat(I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    .line 1078
    invoke-virtual {p0, p1}, Lmokee/support/widget/snackbar/Snackbar;->onWindowSystemUiVisibilityChangedCompat(I)V

    .line 1079
    return-void
.end method

.method public duration(J)Lmokee/support/widget/snackbar/Snackbar;
    .locals 3
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 511
    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .end local p1    # "duration":J
    :goto_1
    iput-wide p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mCustomDuration:J

    .line 512
    return-object p0

    .line 511
    .restart local p1    # "duration":J
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-wide p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mCustomDuration:J

    goto :goto_1
.end method

.method public duration(Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "duration"    # Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    .prologue
    .line 500
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mDuration:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    .line 501
    return-object p0
.end method

.method public eventListener(Lmokee/support/widget/snackbar/listeners/EventListener;)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "listener"    # Lmokee/support/widget/snackbar/listeners/EventListener;

    .prologue
    .line 443
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mEventListener:Lmokee/support/widget/snackbar/listeners/EventListener;

    .line 444
    return-object p0
.end method

.method public getActionColor()I
    .locals 1

    .prologue
    .line 1128
    iget v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mActionColor:I

    return v0
.end method

.method public getActionLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mActionLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 1140
    iget v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mColor:I

    return v0
.end method

.method public getDuration()J
    .locals 4

    .prologue
    .line 1152
    iget-wide v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mCustomDuration:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mDuration:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    invoke-virtual {v0}, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;->getDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mCustomDuration:J

    goto :goto_0
.end method

.method public getLineColor()I
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mLineColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 1175
    iget v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mOffset:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1148
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 1136
    iget v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mTextColor:I

    return v0
.end method

.method public getType()Lmokee/support/widget/snackbar/enums/SnackbarType;
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mType:Lmokee/support/widget/snackbar/enums/SnackbarType;

    return-object v0
.end method

.method public isActionClicked()Z
    .locals 1

    .prologue
    .line 1167
    iget-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mActionClicked:Z

    return v0
.end method

.method public isAnimated()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1182
    iget-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mShowAnimated:Z

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mDismissAnimated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public isDimissing()Z
    .locals 1

    .prologue
    .line 1208
    iget-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsDismissing:Z

    return v0
.end method

.method public isDismissAnimated()Z
    .locals 1

    .prologue
    .line 1186
    iget-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mDismissAnimated:Z

    return v0
.end method

.method public isDismissed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1215
    iget-boolean v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsShowing:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isShowAnimated()Z
    .locals 1

    .prologue
    .line 1190
    iget-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mShowAnimated:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1201
    iget-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsShowing:Z

    return v0
.end method

.method public lineColor(Ljava/lang/Integer;)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "lineColor"    # Ljava/lang/Integer;

    .prologue
    .line 261
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mLineColor:Ljava/lang/Integer;

    .line 262
    return-object p0
.end method

.method public lineColorResource(I)Lmokee/support/widget/snackbar/Snackbar;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 272
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmokee/support/widget/snackbar/Snackbar;->lineColor(Ljava/lang/Integer;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public margin(I)Lmokee/support/widget/snackbar/Snackbar;
    .locals 1
    .param p1, "margin"    # I

    .prologue
    .line 332
    invoke-virtual {p0, p1, p1, p1, p1}, Lmokee/support/widget/snackbar/Snackbar;->margin(IIII)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public margin(II)Lmokee/support/widget/snackbar/Snackbar;
    .locals 1
    .param p1, "marginLR"    # I
    .param p2, "marginTB"    # I

    .prologue
    .line 343
    invoke-virtual {p0, p1, p2, p1, p2}, Lmokee/support/widget/snackbar/Snackbar;->margin(IIII)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public margin(IIII)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "marginLeft"    # I
    .param p2, "marginTop"    # I
    .param p3, "marginRight"    # I
    .param p4, "marginBottom"    # I

    .prologue
    .line 356
    iput p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mMarginLeft:I

    .line 357
    iput p2, p0, Lmokee/support/widget/snackbar/Snackbar;->mMarginTop:I

    .line 358
    iput p4, p0, Lmokee/support/widget/snackbar/Snackbar;->mMarginBottom:I

    .line 359
    iput p3, p0, Lmokee/support/widget/snackbar/Snackbar;->mMarginRight:I

    .line 361
    return-object p0
.end method

.method public maxWidthPercentage(F)Lmokee/support/widget/snackbar/Snackbar;
    .locals 1
    .param p1, "maxWidthPercentage"    # F

    .prologue
    .line 853
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mMaxWidthPercentage:Ljava/lang/Float;

    .line 854
    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1065
    invoke-super {p0}, Lmokee/support/widget/snackbar/layouts/SnackbarLayout;->onDetachedFromWindow()V

    .line 1067
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsShowing:Z

    .line 1069
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mDismissRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1072
    :goto_0
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mRefreshLayoutParamsMarginsRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 1075
    :goto_1
    return-void

    .line 1070
    :cond_0
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmokee/support/widget/snackbar/Snackbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1073
    :cond_1
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mRefreshLayoutParamsMarginsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmokee/support/widget/snackbar/Snackbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method protected onWindowSystemUiVisibilityChangedCompat(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 1082
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mRefreshLayoutParamsMarginsRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1085
    :goto_0
    return-void

    .line 1083
    :cond_0
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mRefreshLayoutParamsMarginsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmokee/support/widget/snackbar/Snackbar;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public position(Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "position"    # Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    .prologue
    .line 309
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mPhonePosition:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    .line 310
    return-object p0
.end method

.method protected refreshLayoutParamsMargins()V
    .locals 3

    .prologue
    .line 1088
    iget-boolean v2, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsDismissing:Z

    if-nez v2, :cond_0

    .line 1092
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1093
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 1097
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1099
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v2, p0, Lmokee/support/widget/snackbar/Snackbar;->mTargetActivity:Landroid/app/Activity;

    invoke-virtual {p0, v2, v0}, Lmokee/support/widget/snackbar/Snackbar;->updateLayoutParamsMargins(Landroid/app/Activity;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1101
    invoke-virtual {p0, v0}, Lmokee/support/widget/snackbar/Snackbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1102
    return-void

    .line 1089
    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void

    .line 1094
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public shouldDismissOnActionClicked()Z
    .locals 1

    .prologue
    .line 1194
    iget-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mShouldDismissOnActionClicked:Z

    return v0
.end method

.method public show(Landroid/app/Activity;)V
    .locals 4
    .param p1, "targetActivity"    # Landroid/app/Activity;

    .prologue
    const v3, 0x1020002

    .line 820
    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 821
    .local v1, "root":Landroid/view/ViewGroup;
    invoke-static {p1}, Lmokee/support/widget/snackbar/Snackbar;->shouldUsePhoneLayout(Landroid/content/Context;)Z

    move-result v2

    .line 822
    .local v2, "usePhoneLayout":Z
    invoke-direct {p0, p1, p1, v1, v2}, Lmokee/support/widget/snackbar/Snackbar;->init(Landroid/content/Context;Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    .line 823
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0, p1, v0}, Lmokee/support/widget/snackbar/Snackbar;->updateLayoutParamsMargins(Landroid/app/Activity;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 824
    invoke-direct {p0, p1, v0, v1}, Lmokee/support/widget/snackbar/Snackbar;->showInternal(Landroid/app/Activity;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/ViewGroup;)V

    .line 825
    return-void
.end method

.method public show(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 834
    sget-boolean v0, Lcom/mokee/cloud/misc/CloudUtils;->Verified:Z

    if-nez v0, :cond_0

    .line 837
    :goto_0
    return-void

    .line 835
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->shouldUsePhoneLayout(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmokee/support/widget/snackbar/Snackbar;->show(Landroid/view/ViewGroup;Z)V

    goto :goto_0
.end method

.method public show(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "usePhoneLayout"    # Z

    .prologue
    const/4 v2, 0x0

    .line 847
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v2, p1, p2}, Lmokee/support/widget/snackbar/Snackbar;->init(Landroid/content/Context;Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    .line 848
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0, v2, v0}, Lmokee/support/widget/snackbar/Snackbar;->updateLayoutParamsMargins(Landroid/app/Activity;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 849
    invoke-direct {p0, v2, v0, p1}, Lmokee/support/widget/snackbar/Snackbar;->showInternal(Landroid/app/Activity;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/ViewGroup;)V

    .line 850
    return-void
.end method

.method public showAnimation(Z)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "withAnimation"    # Z

    .prologue
    .line 466
    iput-boolean p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mShowAnimated:Z

    .line 467
    return-object p0
.end method

.method public showByReplace(Landroid/app/Activity;)V
    .locals 1
    .param p1, "targetActivity"    # Landroid/app/Activity;

    .prologue
    .line 799
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsShowingByReplace:Z

    .line 800
    invoke-virtual {p0, p1}, Lmokee/support/widget/snackbar/Snackbar;->show(Landroid/app/Activity;)V

    .line 801
    return-void
.end method

.method public showByReplace(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 804
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsShowingByReplace:Z

    .line 805
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->shouldUsePhoneLayout(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmokee/support/widget/snackbar/Snackbar;->show(Landroid/view/ViewGroup;Z)V

    .line 806
    return-void
.end method

.method public showByReplace(Landroid/view/ViewGroup;Z)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "usePhoneLayout"    # Z

    .prologue
    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mIsShowingByReplace:Z

    .line 810
    invoke-virtual {p0, p1, p2}, Lmokee/support/widget/snackbar/Snackbar;->show(Landroid/view/ViewGroup;Z)V

    .line 811
    return-void
.end method

.method public swipeListener(Lmokee/support/widget/snackbar/listeners/ActionSwipeListener;)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "listener"    # Lmokee/support/widget/snackbar/listeners/ActionSwipeListener;

    .prologue
    .line 419
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mActionSwipeListener:Lmokee/support/widget/snackbar/listeners/ActionSwipeListener;

    .line 420
    return-object p0
.end method

.method public swipeToDismiss(Z)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "canSwipeToDismiss"    # Z

    .prologue
    .line 488
    iput-boolean p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mCanSwipeToDismiss:Z

    .line 489
    return-object p0
.end method

.method public text(I)Lmokee/support/widget/snackbar/Snackbar;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 198
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmokee/support/widget/snackbar/Snackbar;->text(Ljava/lang/CharSequence;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/lang/CharSequence;)Lmokee/support/widget/snackbar/Snackbar;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 184
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mText:Ljava/lang/CharSequence;

    .line 185
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->snackbarText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-object p0

    .line 186
    :cond_0
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->snackbarText:Landroid/widget/TextView;

    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public textColor(I)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 240
    iput p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mTextColor:I

    .line 241
    return-object p0
.end method

.method public textColorResource(I)Lmokee/support/widget/snackbar/Snackbar;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 251
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmokee/support/widget/snackbar/Snackbar;->textColor(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public textTypeface(Landroid/graphics/Typeface;)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 565
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mTextTypeface:Landroid/graphics/Typeface;

    .line 566
    return-object p0
.end method

.method public type(Lmokee/support/widget/snackbar/enums/SnackbarType;)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "type"    # Lmokee/support/widget/snackbar/enums/SnackbarType;

    .prologue
    .line 173
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mType:Lmokee/support/widget/snackbar/enums/SnackbarType;

    .line 174
    return-object p0
.end method

.method protected updateLayoutParamsMargins(Landroid/app/Activity;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2
    .param p1, "targetActivity"    # Landroid/app/Activity;
    .param p2, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1105
    iget-boolean v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mUsePhoneLayout:Z

    if-nez v0, :cond_0

    .line 1113
    iget v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mMarginTop:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1114
    iget v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mMarginRight:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1115
    iget v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mMarginLeft:I

    iget v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mOffset:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1116
    iget v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mMarginBottom:I

    iget v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mOffset:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1120
    :goto_0
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mWindowInsets:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lmokee/support/widget/snackbar/Snackbar;->updateWindowInsets(Landroid/app/Activity;Landroid/graphics/Rect;)V

    .line 1122
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mWindowInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1123
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar;->mWindowInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1124
    return-void

    .line 1107
    :cond_0
    iget v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mMarginTop:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1108
    iget v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mMarginRight:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1109
    iget v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mMarginLeft:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1110
    iget v0, p0, Lmokee/support/widget/snackbar/Snackbar;->mMarginBottom:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public widePosition(Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;)Lmokee/support/widget/snackbar/Snackbar;
    .locals 0
    .param p1, "position"    # Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    .prologue
    .line 321
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar;->mWidePosition:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    .line 322
    return-object p0
.end method
