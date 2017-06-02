.class final Lcom/android/settings/dashboard/DashboardContainerFragment$TabChangeListener;
.super Ljava/lang/Object;
.source "DashboardContainerFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardContainerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TabChangeListener"
.end annotation


# instance fields
.field private final mActivity:Lcom/android/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardContainerFragment$TabChangeListener;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 161
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 171
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 166
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 177
    packed-switch p1, :pswitch_data_0

    .line 176
    :goto_0
    return-void

    .line 180
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardContainerFragment$TabChangeListener;->mActivity:Lcom/android/settings/SettingsActivity;

    const/16 v1, 0x1dc

    .line 179
    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardContainerFragment$TabChangeListener;->mActivity:Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setDisplaySearchMenu(Z)V

    goto :goto_0

    .line 185
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardContainerFragment$TabChangeListener;->mActivity:Lcom/android/settings/SettingsActivity;

    const/16 v1, 0x1dd

    .line 184
    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardContainerFragment$TabChangeListener;->mActivity:Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setDisplaySearchMenu(Z)V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
