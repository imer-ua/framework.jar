.class public Lcom/gsma/services/utils/Handset;
.super Ljava/lang/Object;
.source "Handset.java"


# static fields
.field public static final BATTERY_LOW_MODE:I = 0x90

.field public static final BATTERY_OPERATIONAL_MODE:I = 0x92

.field public static final BATTERY_POWER_OFF_MODE:I = 0x91

.field public static final BIP:I = 0x93

.field public static final CAT_TP:I = 0x94

.field public static final FELICA:I = 0x20

.field public static final HCI_SWP:I = 0x0

.field public static final MIFARE_CLASSIC:I = 0x21

.field public static final MIFARE_DESFIRE:I = 0x22

.field public static final MULTIPLE_ACTIVE_CEE:I = 0x1

.field public static final NFC_FORUM_TYPE3:I = 0x23

.field public static final OMAPI:I = 0x50


# instance fields
.field private TAG:Ljava/lang/String;

.field private mNxpHandset:Lcom/nxp/nfc/gsma/internal/NxpHandset;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/gsma/services/utils/Handset;->mNxpHandset:Lcom/nxp/nfc/gsma/internal/NxpHandset;

    .line 63
    const-string/jumbo v0, "Handset"

    iput-object v0, p0, Lcom/gsma/services/utils/Handset;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpHandset;

    invoke-direct {v0}, Lcom/nxp/nfc/gsma/internal/NxpHandset;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/utils/Handset;->mNxpHandset:Lcom/nxp/nfc/gsma/internal/NxpHandset;

    .line 68
    iget-object v0, p0, Lcom/gsma/services/utils/Handset;->mNxpHandset:Lcom/nxp/nfc/gsma/internal/NxpHandset;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/gsma/services/utils/Handset;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mNxpHandset is Null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public enableMultiEvt_transactionReception()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/gsma/services/utils/Handset;->mNxpHandset:Lcom/nxp/nfc/gsma/internal/NxpHandset;

    invoke-virtual {v0}, Lcom/nxp/nfc/gsma/internal/NxpHandset;->enableMultiEvt_transactionReception()V

    .line 122
    return-void
.end method

.method public getAvailableSecureElements(I)Ljava/util/List;
    .locals 1
    .param p1, "batteryLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/gsma/services/utils/Handset;->mNxpHandset:Lcom/nxp/nfc/gsma/internal/NxpHandset;

    invoke-virtual {v0, p1}, Lcom/nxp/nfc/gsma/internal/NxpHandset;->getAvailableSecureElements(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/gsma/services/utils/Handset;->mNxpHandset:Lcom/nxp/nfc/gsma/internal/NxpHandset;

    invoke-virtual {v0, p1}, Lcom/nxp/nfc/gsma/internal/NxpHandset;->getNxpProperty(I)Z

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/gsma/services/utils/Handset;->mNxpHandset:Lcom/nxp/nfc/gsma/internal/NxpHandset;

    invoke-virtual {v0}, Lcom/nxp/nfc/gsma/internal/NxpHandset;->getNxpVersion()I

    move-result v0

    return v0
.end method
