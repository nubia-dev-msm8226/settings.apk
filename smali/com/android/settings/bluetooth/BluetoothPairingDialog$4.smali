.class Lcom/android/settings/bluetooth/BluetoothPairingDialog$4;
.super Ljava/lang/Object;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$4;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 307
    if-eqz p2, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$4;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->-get0(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 306
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$4;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->-get0(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0
.end method
