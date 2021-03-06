.class Lcom/android/settings/CryptKeeper$DecryptTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$DecryptTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method

.method private hide(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v1, p1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 187
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 202
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-wrap0(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 204
    .local v1, "service":Landroid/os/storage/IMountService;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v3, "Error while decrypting..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 201
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "failedAttempts"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 213
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 216
    iget-object v3, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v3}, Lcom/android/settings/CryptKeeper;->-get3(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v3}, Lcom/android/settings/CryptKeeper;->-get3(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v4}, Lcom/android/settings/CryptKeeper;->-get0(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 218
    iget-object v3, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v3}, Lcom/android/settings/CryptKeeper;->-get3(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v4}, Lcom/android/settings/CryptKeeper;->-get0(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    :cond_0
    iget-object v3, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v3}, Lcom/android/settings/CryptKeeper;->-get6(Lcom/android/settings/CryptKeeper;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0c0a99

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 221
    const v3, 0x7f1100dc

    invoke-direct {p0, v3}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    .line 222
    const v3, 0x7f1100ec

    invoke-direct {p0, v3}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    .line 223
    const v3, 0x7f1100bd

    invoke-direct {p0, v3}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    .line 224
    const v3, 0x7f1100eb

    invoke-direct {p0, v3}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    .line 225
    const v3, 0x7f1100db

    invoke-direct {p0, v3}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    .line 226
    const v3, 0x7f1100dd

    invoke-direct {p0, v3}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    .line 212
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_3

    .line 229
    iget-object v3, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v3}, Lcom/android/settings/CryptKeeper;->-get4(Lcom/android/settings/CryptKeeper;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    const-string/jumbo v3, "CryptKeeper"

    .line 231
    const-string/jumbo v4, "  CryptKeeper.MAX_FAILED_ATTEMPTS, calling encryptStorage with wipe"

    .line 230
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v3}, Lcom/android/settings/CryptKeeper;->-wrap0(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 234
    .local v2, "service":Landroid/os/storage/IMountService;
    const-string/jumbo v3, ""

    const/4 v4, 0x1

    invoke-interface {v2, v4, v3}, Landroid/os/storage/IMountService;->encryptWipeStorage(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    .end local v2    # "service":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CryptKeeper"

    const-string/jumbo v4, "Unable to call MountService properly"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void

    .line 241
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 243
    const-string/jumbo v3, "android.intent.extra.REASON"

    const-string/jumbo v4, "CryptKeeper.MAX_FAILED_ATTEMPTS"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    iget-object v3, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v3, v1}, Lcom/android/settings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 246
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 248
    iget-object v3, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    const v4, 0x7f040056

    invoke-virtual {v3, v4}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 249
    iget-object v3, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v3, v6, v5}, Lcom/android/settings/CryptKeeper;->-wrap10(Lcom/android/settings/CryptKeeper;ZZ)V

    .line 250
    return-void

    .line 252
    :cond_4
    iget-object v3, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v3, p1}, Lcom/android/settings/CryptKeeper;->-wrap4(Lcom/android/settings/CryptKeeper;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "failedAttempts"    # Ljava/lang/Object;

    .prologue
    .line 212
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "failedAttempts":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 194
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->-get3(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->-get3(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->-get2(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->-wrap1(Lcom/android/settings/CryptKeeper;)V

    .line 192
    return-void
.end method
