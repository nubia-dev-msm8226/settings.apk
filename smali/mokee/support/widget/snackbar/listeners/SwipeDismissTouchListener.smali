.class public Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;
    }
.end annotation


# instance fields
.field private mAnimationTime:J

.field private mCallbacks:Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;

.field private mContainerView:Landroid/view/View;

.field private mDownX:F

.field private mDownY:F

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mSlop:I

.field private mSwiping:Z

.field private mSwipingSlop:I

.field private mToken:Ljava/lang/Object;

.field private mTranslationX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callbacks"    # Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    .line 45
    iput v1, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 93
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSlop:I

    .line 94
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mMinFlingVelocity:I

    .line 95
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    .line 98
    iput-object p1, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mContainerView:Landroid/view/View;

    .line 99
    iput-object p2, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    .line 100
    iput-object p3, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mCallbacks:Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;

    .line 101
    return-void
.end method

.method static synthetic access$0(Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->performDismiss(Landroid/view/View;)V

    return-void
.end method

.method private performDismiss(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 251
    iget-object v0, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mCallbacks:Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;

    iget-object v1, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;->onDismiss(Landroid/view/View;Ljava/lang/Object;)V

    .line 252
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 106
    iget v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mTranslationX:F

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 108
    iget v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    const/4 v9, 0x2

    if-lt v8, v9, :cond_1

    .line 112
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 247
    :cond_0
    :goto_1
    const/4 v8, 0x0

    return v8

    .line 109
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    goto :goto_0

    .line 115
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iput v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mDownX:F

    .line 116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mDownY:F

    .line 117
    iget-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mCallbacks:Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;

    iget-object v9, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    invoke-interface {v8, v9}, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;->canDismiss(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 122
    :goto_2
    const/4 v8, 0x0

    return v8

    .line 118
    :cond_2
    iget-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mCallbacks:Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;->pauseTimer(Z)V

    .line 119
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 120
    iget-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 126
    :pswitch_1
    iget-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_0

    .line 130
    iget-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mCallbacks:Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;->pauseTimer(Z)V

    .line 131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iget v9, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mDownX:F

    sub-float v3, v8, v9

    .line 132
    .local v3, "deltaX":F
    iget-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 133
    iget-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 134
    iget-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 135
    .local v7, "velocityX":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 136
    .local v0, "absVelocityX":F
    iget-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 137
    .local v1, "absVelocityY":F
    const/4 v5, 0x0

    .line 138
    .local v5, "dismiss":Z
    const/4 v6, 0x0

    .line 139
    .local v6, "dismissRight":Z
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    iget-boolean v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    if-nez v8, :cond_5

    .line 142
    :cond_3
    iget v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mMinFlingVelocity:I

    int-to-float v8, v8

    cmpg-float v8, v8, v0

    if-gtz v8, :cond_4

    iget v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    int-to-float v8, v8

    cmpg-float v8, v0, v8

    if-gtz v8, :cond_4

    .line 143
    cmpg-float v8, v1, v0

    if-gez v8, :cond_4

    .line 144
    cmpg-float v8, v1, v0

    if-gez v8, :cond_4

    iget-boolean v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    if-nez v8, :cond_7

    .line 149
    .end local v5    # "dismiss":Z
    .end local v6    # "dismissRight":Z
    :cond_4
    :goto_3
    if-nez v5, :cond_c

    .line 165
    iget-boolean v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    if-nez v8, :cond_e

    .line 176
    :goto_4
    iget-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_f

    :goto_5
    const/4 v8, 0x0

    .line 180
    iput v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mTranslationX:F

    const/4 v8, 0x0

    .line 181
    iput v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mDownX:F

    const/4 v8, 0x0

    .line 182
    iput v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mDownY:F

    .line 183
    const/4 v8, 0x0

    iput-boolean v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    goto/16 :goto_1

    .line 140
    .restart local v5    # "dismiss":Z
    .restart local v6    # "dismissRight":Z
    :cond_5
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 141
    cmpl-float v8, v3, v8

    if-lez v8, :cond_6

    const/4 v6, 0x1

    .local v6, "dismissRight":Z
    :goto_6
    goto :goto_3

    .local v6, "dismissRight":Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    .line 146
    cmpg-float v8, v7, v8

    if-gez v8, :cond_8

    const/4 v8, 0x1

    move v9, v8

    :goto_7
    const/4 v8, 0x0

    cmpg-float v8, v3, v8

    if-gez v8, :cond_9

    const/4 v8, 0x1

    :goto_8
    if-eq v9, v8, :cond_a

    const/4 v5, 0x0

    .line 147
    .local v5, "dismiss":Z
    :goto_9
    iget-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_b

    const/4 v6, 0x1

    .local v6, "dismissRight":Z
    :goto_a
    goto :goto_3

    .local v5, "dismiss":Z
    .local v6, "dismissRight":Z
    :cond_8
    const/4 v8, 0x0

    move v9, v8

    .line 146
    goto :goto_7

    :cond_9
    const/4 v8, 0x0

    goto :goto_8

    :cond_a
    const/4 v5, 0x1

    goto :goto_9

    .local v5, "dismiss":Z
    :cond_b
    const/4 v6, 0x0

    .line 147
    goto :goto_a

    .line 151
    .end local v5    # "dismiss":Z
    .end local v6    # "dismissRight":Z
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    .line 152
    if-nez v6, :cond_d

    iget v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    neg-int v8, v8

    :goto_b
    int-to-float v8, v8

    invoke-virtual {v9, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    .line 153
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 154
    iget-wide v10, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    .line 155
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 156
    iget-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mContainerView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    .line 157
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 158
    iget-wide v10, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 159
    new-instance v9, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$1;

    invoke-direct {v9, p0, p1}, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$1;-><init>(Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;Landroid/view/View;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_4

    .line 152
    :cond_d
    iget v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    goto :goto_b

    .line 167
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    .line 168
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    .line 169
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 170
    iget-wide v10, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    .line 171
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 172
    iget-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mContainerView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    .line 173
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 174
    iget-wide v10, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_4

    .line 177
    :cond_f
    iget-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v8, 0x0

    .line 178
    iput-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_5

    .line 188
    .end local v0    # "absVelocityX":F
    .end local v1    # "absVelocityY":F
    .end local v3    # "deltaX":F
    .end local v7    # "velocityX":F
    :pswitch_2
    iget-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    .line 193
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    .line 194
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 195
    iget-wide v10, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    .line 196
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 197
    iget-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mContainerView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    .line 198
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 199
    iget-wide v10, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 200
    iget-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v8, 0x0

    .line 201
    iput-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v8, 0x0

    .line 202
    iput v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mTranslationX:F

    const/4 v8, 0x0

    .line 203
    iput v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mDownX:F

    const/4 v8, 0x0

    .line 204
    iput v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mDownY:F

    .line 205
    const/4 v8, 0x0

    iput-boolean v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    goto/16 :goto_1

    .line 210
    :pswitch_3
    iget-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_0

    .line 214
    iget-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 215
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iget v9, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mDownX:F

    sub-float v3, v8, v9

    .line 216
    .restart local v3    # "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mDownY:F

    sub-float v4, v8, v9

    .line 217
    .local v4, "deltaY":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_10

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_10

    .line 218
    const/4 v8, 0x1

    iput-boolean v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    const/4 v8, 0x0

    .line 219
    cmpl-float v8, v3, v8

    if-lez v8, :cond_11

    iget v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSlop:I

    :goto_c
    iput v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSwipingSlop:I

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-nez v8, :cond_12

    .line 226
    :goto_d
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 228
    .local v2, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    or-int/lit8 v8, v8, 0x3

    .line 227
    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 230
    invoke-virtual {p1, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 231
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 234
    .end local v2    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_10
    iget-boolean v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v8, :cond_0

    .line 235
    iput v3, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mTranslationX:F

    .line 236
    iget v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSwipingSlop:I

    int-to-float v8, v8

    sub-float v8, v3, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 239
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    iget v11, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v10, v11, v10

    .line 238
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 240
    iget-object v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mContainerView:Landroid/view/View;

    const v9, 0x3e4ccccd    # 0.2f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 241
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget v12, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v11, v12, v11

    .line 240
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 242
    const/4 v8, 0x1

    return v8

    .line 219
    :cond_11
    iget v8, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSlop:I

    neg-int v8, v8

    goto :goto_c

    .line 222
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_d

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
