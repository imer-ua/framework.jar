.class public Lcom/gsma/services/nfc/NfcController$NxpNfcControllerCallback;
.super Ljava/lang/Object;
.source "NfcController.java"

# interfaces
.implements Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/nfc/NfcController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NxpNfcControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/nfc/NfcController;


# direct methods
.method public constructor <init>(Lcom/gsma/services/nfc/NfcController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gsma/services/nfc/NfcController;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/gsma/services/nfc/NfcController$NxpNfcControllerCallback;->this$0:Lcom/gsma/services/nfc/NfcController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNxpEnableNfcController(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController$NxpNfcControllerCallback;->this$0:Lcom/gsma/services/nfc/NfcController;

    invoke-static {v0}, Lcom/gsma/services/nfc/NfcController;->-get0(Lcom/gsma/services/nfc/NfcController;)Lcom/gsma/services/nfc/NfcController$Callbacks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/gsma/services/nfc/NfcController$Callbacks;->onEnableNfcController(Z)V

    .line 147
    const-string/jumbo v0, "NfcController"

    const-string/jumbo v1, "NFC Enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController$NxpNfcControllerCallback;->this$0:Lcom/gsma/services/nfc/NfcController;

    invoke-static {v0}, Lcom/gsma/services/nfc/NfcController;->-get0(Lcom/gsma/services/nfc/NfcController;)Lcom/gsma/services/nfc/NfcController$Callbacks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/gsma/services/nfc/NfcController$Callbacks;->onEnableNfcController(Z)V

    .line 150
    const-string/jumbo v0, "NfcController"

    const-string/jumbo v1, "NFC Not Enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
