.class Landroid/bluetooth/BluetoothDun$2;
.super Ljava/lang/Object;
.source "BluetoothDun.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDun;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDun;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothDun;

    .prologue
    .line 264
    iput-object p1, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 267
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothDun$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothDun;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDun;->-set0(Landroid/bluetooth/BluetoothDun;Landroid/bluetooth/IBluetoothDun;)Landroid/bluetooth/IBluetoothDun;

    .line 269
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->-get3(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->-get3(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    .line 271
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    .line 270
    const/16 v2, 0x12

    invoke-interface {v0, v2, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 265
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 276
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDun;->-set0(Landroid/bluetooth/BluetoothDun;Landroid/bluetooth/IBluetoothDun;)Landroid/bluetooth/IBluetoothDun;

    .line 277
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->-get3(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->-get3(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 274
    :cond_0
    return-void
.end method
