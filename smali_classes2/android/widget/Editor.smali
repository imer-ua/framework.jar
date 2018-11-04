.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$1;,
        Landroid/widget/Editor$ActionPinnedPopupWindow;,
        Landroid/widget/Editor$ActionPopupWindow;,
        Landroid/widget/Editor$AnimatePopupWindow;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$EasyEditDeleteListener;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$EditOperation;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$Fader;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$PhraseAdapter;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$ProcessTextIntentActionsHandler;,
        Landroid/widget/Editor$SelectionEndHandleView;,
        Landroid/widget/Editor$SelectionHandleView;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$SelectionPopupWindow;,
        Landroid/widget/Editor$SelectionStartHandleView;,
        Landroid/widget/Editor$SpanController;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$TextRenderNode;,
        Landroid/widget/Editor$TextViewPositionListener;,
        Landroid/widget/Editor$UndoInputFilter;
    }
.end annotation


# static fields
.field static final BLINK:I = 0x1f4

.field private static final DEBUG_UNDO:Z = false

.field private static DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x0

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field private static final LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS:F = 0.5f

.field private static final MENU_ITEM_ORDER_COPY:I = 0x4

.field private static final MENU_ITEM_ORDER_CUT:I = 0x3

.field private static final MENU_ITEM_ORDER_PASTE:I = 0x5

.field private static final MENU_ITEM_ORDER_PASTE_AS_PLAIN_TEXT:I = 0x6

.field private static final MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0xa

.field private static final MENU_ITEM_ORDER_REDO:I = 0x2

.field private static final MENU_ITEM_ORDER_REPLACE:I = 0x9

.field private static final MENU_ITEM_ORDER_SELECT_ALL:I = 0x8

.field private static final MENU_ITEM_ORDER_SHARE:I = 0x7

.field private static final MENU_ITEM_ORDER_UNDO:I = 0x1

.field private static final MOCK_CALLBACK_NAME:Ljava/lang/String; = "android.widget.cts"

.field private static final TAG:Ljava/lang/String; = "Editor"

.field private static final TEMP_POSITION:[F

.field private static final UNDO_OWNER_TAG:Ljava/lang/String; = "Editor"

.field private static final UNSET_LINE:I = -0x1

.field private static final mMockActionMode:Landroid/view/ActionMode;

.field private static sTmpDisplayMetrics:Landroid/util/DisplayMetrics;


# instance fields
.field mAllowUndo:Z

.field mBlink:Landroid/widget/Editor$Blink;

.field private mContextMenuAnchorX:F

.field private mContextMenuAnchorY:F

.field mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

.field mCreatedWithASelection:Z

.field mCursorCount:I

.field final mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field mCursorVisible:Z

.field mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

.field mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mCustomSelectionActionModeCallbackDestroyed:Z

.field mDiscardNextActionUp:Z

.field mDoubleTap:Z

.field mError:Ljava/lang/CharSequence;

.field mErrorPopup:Landroid/widget/Editor$ErrorPopup;

.field mErrorWasChanged:Z

.field mFirstTouchUp:Z

.field mFrozenWithFocus:Z

.field mIgnoreActionUpEvent:Z

.field mInBatchEditControllers:Z

.field mInputContentType:Landroid/widget/Editor$InputContentType;

.field mInputMethodState:Landroid/widget/Editor$InputMethodState;

.field mInputType:I

.field mInsertionControllerEnabled:Z

.field mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

.field mIsBeingLongClicked:Z

.field mIsInsertionActionModeStartPending:Z

.field mKeyListener:Landroid/text/method/KeyListener;

.field mLastDownPositionX:F

.field mLastDownPositionY:F

.field private mPositionListener:Landroid/widget/Editor$PositionListener;

.field private mPreserveSelection:Z

.field final mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

.field private mRestartActionModeOnNextRefresh:Z

.field mSelectAllOnFocus:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field mSelectionControllerEnabled:Z

.field mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

.field mSelectionMoved:Z

.field mShowCursor:J

.field mShowErrorAfterAttach:Z

.field mShowSoftInputOnFocus:Z

.field mShowSuggestionRunnable:Ljava/lang/Runnable;

.field private mSpanController:Landroid/widget/Editor$SpanController;

.field mSpellChecker:Landroid/widget/SpellChecker;

.field mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

.field private mTempRect:Landroid/graphics/Rect;

.field mTextActionMode:Landroid/view/ActionMode;

.field mTextIsSelectable:Z

.field mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

.field private mTextView:Landroid/widget/TextView;

.field mTouchFocusSelected:Z

.field final mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

.field private final mUndoManager:Landroid/content/UndoManager;

.field private mUndoOwner:Landroid/content/UndoOwner;

.field mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/Editor;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/Editor;)Landroid/content/UndoManager;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/Editor;)Landroid/content/UndoOwner;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -set1(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -set2(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -set3(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    invoke-static {}, Landroid/widget/Editor;->isBigFontMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Landroid/widget/Editor;)I
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->getDisplayHeightPixels()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    return-void
.end method

.method static synthetic -wrap12(Landroid/widget/Editor;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->startActivityFromContext(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap13(Landroid/widget/Editor;IIZ)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "createSpellChecker"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/Editor;I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->isOffsetVisible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/Editor;FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/Editor;II)Z
    .locals 1
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionVisible(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    invoke-static {p0, p1, p2}, Landroid/widget/Editor;->isValidRange(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/widget/Editor;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/widget/Editor;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Landroid/view/View;)F
    .locals 1
    .param p0, "descendant"    # Landroid/view/View;

    .prologue
    invoke-static {p0}, Landroid/widget/Editor;->getDescendantViewScale(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Landroid/widget/Editor;Landroid/text/Layout;IF)I
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "prevLine"    # I
    .param p3, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Landroid/widget/Editor;->TEMP_POSITION:[F

    .line 155
    const/16 v0, 0x14

    sput v0, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    .line 4221
    new-instance v0, Landroid/widget/Editor$1;

    invoke-direct {v0}, Landroid/widget/Editor$1;-><init>()V

    sput-object v0, Landroid/widget/Editor;->mMockActionMode:Landroid/view/ActionMode;

    .line 149
    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Landroid/content/UndoManager;

    invoke-direct {v0}, Landroid/content/UndoManager;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 178
    iget-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const-string/jumbo v1, "Editor"

    invoke-virtual {v0, v1, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 179
    new-instance v0, Landroid/widget/Editor$UndoInputFilter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$UndoInputFilter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    .line 180
    iput-boolean v3, p0, Landroid/widget/Editor;->mAllowUndo:Z

    .line 210
    iput-boolean v3, p0, Landroid/widget/Editor;->mFirstTouchUp:Z

    .line 213
    iput v2, p0, Landroid/widget/Editor;->mInputType:I

    .line 221
    iput-boolean v3, p0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 238
    iput-boolean v3, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 248
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 266
    iput-boolean v2, p0, Landroid/widget/Editor;->mDoubleTap:Z

    .line 282
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    .line 2003
    iput-boolean v2, p0, Landroid/widget/Editor;->mCustomSelectionActionModeCallbackDestroyed:Z

    .line 285
    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 287
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 288
    new-instance v0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$ProcessTextIntentActionsHandler;)V

    iput-object v0, p0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    .line 284
    return-void
.end method

.method private canSelectText()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 743
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 12
    .param p1, "pop"    # Landroid/widget/PopupWindow;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 708
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 709
    .local v11, "wid":I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 711
    .local v8, "ht":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 712
    const v2, 0x105006b

    .line 711
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 713
    .local v3, "defaultWidthInPixels":I
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 714
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    .line 713
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 715
    .local v0, "l":Landroid/text/Layout;
    const/4 v10, 0x0

    .line 716
    .local v10, "max":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 717
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 716
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 724
    :cond_0
    float-to-double v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    add-int/2addr v1, v11

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 725
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 707
    return-void
.end method

.method private discardTextDisplayLists()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 415
    iget-object v3, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v3, :cond_2

    .line 416
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 417
    iget-object v3, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 418
    iget-object v3, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v3, v3, v1

    iget-object v0, v3, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    .line 419
    .local v0, "displayList":Landroid/view/RenderNode;
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/RenderNode;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 420
    invoke-virtual {v0}, Landroid/view/RenderNode;->discardDisplayList()V

    .line 416
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "displayList":Landroid/view/RenderNode;
    :cond_1
    move-object v0, v2

    .line 418
    goto :goto_1

    .line 414
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private downgradeEasyCorrectionSpans()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1153
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1154
    .local v4, "text":Ljava/lang/CharSequence;
    instance-of v5, v4, Landroid/text/Spannable;

    if-eqz v5, :cond_1

    move-object v2, v4

    .line 1155
    check-cast v2, Landroid/text/Spannable;

    .line 1157
    .local v2, "spannable":Landroid/text/Spannable;
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/text/style/SuggestionSpan;

    .line 1156
    invoke-interface {v2, v7, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/SuggestionSpan;

    .line 1158
    .local v3, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 1159
    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 1160
    .local v0, "flags":I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    .line 1161
    and-int/lit8 v5, v0, 0x2

    if-nez v5, :cond_0

    .line 1162
    and-int/lit8 v0, v0, -0x2

    .line 1163
    aget-object v5, v3, v1

    invoke-virtual {v5, v0}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 1158
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1152
    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v2    # "spannable":Landroid/text/Spannable;
    .end local v3    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :cond_1
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cursorOffsetVertical"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1632
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 1633
    .local v1, "translate":Z
    :cond_0
    if-eqz v1, :cond_1

    int-to-float v2, p2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1634
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ge v0, v2, :cond_2

    .line 1635
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1634
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1637
    :cond_2
    if-eqz v1, :cond_3

    neg-int v2, p2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1631
    :cond_3
    return-void
.end method

.method private drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 35
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I

    .prologue
    .line 1514
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v28

    .line 1515
    .local v28, "lineRange":J
    invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v9

    .line 1516
    .local v9, "firstLine":I
    invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v10

    .line 1517
    .local v10, "lastLine":I
    if-gez v10, :cond_0

    return-void

    :cond_0
    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 1519
    invoke-virtual/range {v4 .. v10}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 1522
    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/text/DynamicLayout;

    if-eqz v4, :cond_c

    .line 1523
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-nez v4, :cond_1

    .line 1524
    const-class v4, Landroid/widget/Editor$TextRenderNode;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/widget/Editor$TextRenderNode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    :cond_1
    move-object/from16 v21, p2

    .line 1527
    check-cast v21, Landroid/text/DynamicLayout;

    .line 1528
    .local v21, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v15

    .line 1529
    .local v15, "blockEndLines":[I
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v17

    .line 1530
    .local v17, "blockIndices":[I
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v31

    .line 1531
    .local v31, "numberOfBlocks":I
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getIndexFirstChangedBlock()I

    move-result v24

    .line 1533
    .local v24, "indexFirstChangedBlock":I
    const/16 v22, -0x1

    .line 1534
    .local v22, "endOfPreviousBlock":I
    const/16 v33, 0x0

    .line 1535
    .local v33, "searchStartIndex":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    .line 1536
    aget v14, v15, v23

    .line 1537
    .local v14, "blockEndLine":I
    aget v16, v17, v23

    .line 1539
    .local v16, "blockIndex":I
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_6

    const/16 v18, 0x1

    .line 1540
    .local v18, "blockIsInvalid":Z
    :goto_1
    if-eqz v18, :cond_3

    .line 1541
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v31

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor;->getAvailableDisplayListIndex([III)I

    move-result v16

    .line 1544
    aput v16, v17, v23

    .line 1545
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    if-eqz v4, :cond_2

    .line 1546
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 1548
    :cond_2
    add-int/lit8 v33, v16, 0x1

    .line 1551
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    if-nez v4, :cond_4

    .line 1552
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 1553
    new-instance v5, Landroid/widget/Editor$TextRenderNode;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Editor$TextRenderNode;-><init>(Ljava/lang/String;)V

    .line 1552
    aput-object v5, v4, v16

    .line 1556
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    invoke-virtual {v4}, Landroid/widget/Editor$TextRenderNode;->needsRecord()Z

    move-result v13

    .line 1557
    .local v13, "blockDisplayListIsInvalid":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    iget-object v12, v4, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    .line 1558
    .local v12, "blockDisplayList":Landroid/view/RenderNode;
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    if-eqz v13, :cond_a

    .line 1559
    :cond_5
    add-int/lit8 v11, v22, 0x1

    .line 1560
    .local v11, "blockBeginLine":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v34

    .line 1561
    .local v34, "top":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v19

    .line 1562
    .local v19, "bottom":I
    const/16 v25, 0x0

    .line 1563
    .local v25, "left":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v32

    .line 1564
    .local v32, "right":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1565
    const v30, 0x7f7fffff    # Float.MAX_VALUE

    .line 1566
    .local v30, "min":F
    const/16 v27, 0x1

    .line 1567
    .local v27, "max":F
    move/from16 v26, v11

    .local v26, "line":I
    :goto_2
    move/from16 v0, v26

    if-gt v0, v14, :cond_7

    .line 1568
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    move/from16 v0, v30

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v30

    .line 1569
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    move/from16 v0, v27

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v27

    .line 1567
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 1539
    .end local v11    # "blockBeginLine":I
    .end local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .end local v13    # "blockDisplayListIsInvalid":Z
    .end local v18    # "blockIsInvalid":Z
    .end local v19    # "bottom":I
    .end local v25    # "left":I
    .end local v26    # "line":I
    .end local v27    # "max":F
    .end local v30    # "min":F
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1571
    .restart local v11    # "blockBeginLine":I
    .restart local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .restart local v13    # "blockDisplayListIsInvalid":Z
    .restart local v18    # "blockIsInvalid":Z
    .restart local v19    # "bottom":I
    .restart local v25    # "left":I
    .restart local v26    # "line":I
    .restart local v27    # "max":F
    .restart local v30    # "min":F
    .restart local v32    # "right":I
    .restart local v34    # "top":I
    :cond_7
    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v25, v0

    .line 1572
    const/high16 v4, 0x3f000000    # 0.5f

    add-float v4, v4, v27

    float-to-int v0, v4

    move/from16 v32, v0

    .line 1576
    .end local v26    # "line":I
    .end local v27    # "max":F
    .end local v30    # "min":F
    :cond_8
    if-eqz v13, :cond_9

    .line 1578
    sub-int v4, v32, v25

    sub-int v5, v19, v34

    .line 1577
    invoke-virtual {v12, v4, v5}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v20

    .line 1582
    .local v20, "displayListCanvas":Landroid/view/DisplayListCanvas;
    move/from16 v0, v25

    neg-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v34

    neg-int v5, v0

    int-to-float v5, v5

    :try_start_0
    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/view/DisplayListCanvas;->translate(FF)V

    .line 1583
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11, v14}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 1584
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/Editor$TextRenderNode;->isDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1588
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 1590
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 1596
    .end local v20    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    :cond_9
    move/from16 v0, v25

    move/from16 v1, v34

    move/from16 v2, v32

    move/from16 v3, v19

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .end local v11    # "blockBeginLine":I
    .end local v19    # "bottom":I
    .end local v25    # "left":I
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_a
    move-object/from16 v4, p1

    .line 1599
    check-cast v4, Landroid/view/DisplayListCanvas;

    invoke-virtual {v4, v12}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 1601
    move/from16 v22, v14

    .line 1535
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 1587
    .restart local v11    # "blockBeginLine":I
    .restart local v19    # "bottom":I
    .restart local v20    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    .restart local v25    # "left":I
    .restart local v32    # "right":I
    .restart local v34    # "top":I
    :catchall_0
    move-exception v4

    .line 1588
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 1590
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 1587
    throw v4

    .line 1604
    .end local v11    # "blockBeginLine":I
    .end local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .end local v13    # "blockDisplayListIsInvalid":Z
    .end local v14    # "blockEndLine":I
    .end local v16    # "blockIndex":I
    .end local v18    # "blockIsInvalid":Z
    .end local v19    # "bottom":I
    .end local v20    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    .end local v25    # "left":I
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_b
    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->setIndexFirstChangedBlock(I)V

    .line 1513
    .end local v15    # "blockEndLines":[I
    .end local v17    # "blockIndices":[I
    .end local v21    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v22    # "endOfPreviousBlock":I
    .end local v23    # "i":I
    .end local v24    # "indexFirstChangedBlock":I
    .end local v31    # "numberOfBlocks":I
    .end local v33    # "searchStartIndex":I
    :goto_3
    return-void

    .line 1607
    :cond_c
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v10}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    goto :goto_3
.end method

.method private extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 9
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "partialStartOffset"    # I
    .param p3, "partialEndOffset"    # I
    .param p4, "delta"    # I
    .param p5, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1320
    if-eqz p1, :cond_0

    if-nez p5, :cond_1

    .line 1321
    :cond_0
    return v7

    .line 1324
    :cond_1
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1325
    .local v1, "content":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 1326
    return v7

    .line 1329
    :cond_2
    const/4 v6, -0x2

    if-eq p2, v6, :cond_e

    .line 1330
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1331
    .local v0, "N":I
    if-gez p2, :cond_6

    .line 1332
    iput v8, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v8, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1333
    const/4 p2, 0x0

    .line 1334
    move p3, v0

    .line 1367
    :cond_3
    :goto_0
    iget v6, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_d

    .line 1368
    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1379
    .end local v0    # "N":I
    :goto_1
    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1380
    const/16 v6, 0x800

    invoke-static {v1, v6}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v6

    if-eqz v6, :cond_4

    .line 1381
    iget v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1383
    :cond_4
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1384
    iget v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1386
    :cond_5
    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 1387
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 1388
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 1389
    const/4 v6, 0x1

    return v6

    .line 1338
    .restart local v0    # "N":I
    :cond_6
    add-int/2addr p3, p4

    .line 1340
    instance-of v6, v1, Landroid/text/Spanned;

    if-eqz v6, :cond_9

    move-object v4, v1

    .line 1341
    check-cast v4, Landroid/text/Spanned;

    .line 1343
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v6, Landroid/text/ParcelableSpan;

    .line 1342
    invoke-interface {v4, p2, p3, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 1344
    .local v5, "spans":[Ljava/lang/Object;
    array-length v2, v5

    .line 1345
    .local v2, "i":I
    :cond_7
    :goto_2
    if-lez v2, :cond_9

    .line 1346
    add-int/lit8 v2, v2, -0x1

    .line 1347
    aget-object v6, v5, v2

    invoke-interface {v4, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 1348
    .local v3, "j":I
    if-ge v3, p2, :cond_8

    move p2, v3

    .line 1349
    :cond_8
    aget-object v6, v5, v2

    invoke-interface {v4, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1350
    if-le v3, p3, :cond_7

    move p3, v3

    goto :goto_2

    .line 1353
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    :cond_9
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1354
    sub-int v6, p3, p4

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 1356
    if-le p2, v0, :cond_b

    .line 1357
    move p2, v0

    .line 1361
    :cond_a
    :goto_3
    if-le p3, v0, :cond_c

    .line 1362
    move p3, v0

    goto :goto_0

    .line 1358
    :cond_b
    if-gez p2, :cond_a

    .line 1359
    const/4 p2, 0x0

    goto :goto_3

    .line 1363
    :cond_c
    if-gez p3, :cond_3

    .line 1364
    const/4 p3, 0x0

    goto :goto_0

    .line 1371
    :cond_d
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1375
    .end local v0    # "N":I
    :cond_e
    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1376
    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 1377
    const-string/jumbo v6, ""

    iput-object v6, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private getActiveLayout()Landroid/text/Layout;
    .locals 3

    .prologue
    .line 4761
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 4762
    .local v1, "layout":Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4763
    .local v0, "hintLayout":Landroid/text/Layout;
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 4764
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4767
    :cond_0
    :goto_0
    return-object v1

    .line 4765
    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private getAvailableDisplayListIndex([III)I
    .locals 6
    .param p1, "blockIndices"    # [I
    .param p2, "numberOfBlocks"    # I
    .param p3, "searchStartIndex"    # I

    .prologue
    .line 1613
    iget-object v4, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v3, v4

    .line 1614
    .local v3, "length":I
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 1615
    const/4 v0, 0x0

    .line 1616
    .local v0, "blockIndexFound":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p2, :cond_0

    .line 1617
    aget v4, p1, v2

    if-ne v4, v1, :cond_1

    .line 1618
    const/4 v0, 0x1

    .line 1622
    :cond_0
    if-eqz v0, :cond_2

    .line 1614
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1616
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1623
    :cond_2
    return v1

    .line 1627
    .end local v0    # "blockIndexFound":Z
    .end local v2    # "j":I
    :cond_3
    iget-object v4, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/widget/Editor$TextRenderNode;

    iput-object v4, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 1628
    return v3
.end method

.method private getCharRange(I)J
    .locals 8
    .param p1, "offset"    # I

    .prologue
    .line 882
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 883
    .local v4, "textLength":I
    add-int/lit8 v5, p1, 0x1

    if-ge v5, v4, :cond_0

    .line 884
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 885
    .local v0, "currentChar":C
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 886
    .local v1, "nextChar":C
    invoke-static {v0, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 887
    add-int/lit8 v5, p1, 0x2

    invoke-static {p1, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v6

    return-wide v6

    .line 890
    .end local v0    # "currentChar":C
    .end local v1    # "nextChar":C
    :cond_0
    if-ge p1, v4, :cond_1

    .line 891
    add-int/lit8 v5, p1, 0x1

    invoke-static {p1, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v6

    return-wide v6

    .line 893
    :cond_1
    add-int/lit8 v5, p1, -0x2

    if-ltz v5, :cond_2

    .line 894
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 895
    .local v2, "previousChar":C
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, -0x2

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 896
    .local v3, "previousPreviousChar":C
    invoke-static {v3, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 897
    add-int/lit8 v5, p1, -0x2

    invoke-static {v5, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v6

    return-wide v6

    .line 900
    .end local v2    # "previousChar":C
    .end local v3    # "previousPreviousChar":C
    :cond_2
    add-int/lit8 v5, p1, -0x1

    if-ltz v5, :cond_3

    .line 901
    add-int/lit8 v5, p1, -0x1

    invoke-static {v5, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v6

    return-wide v6

    .line 903
    :cond_3
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v6

    return-wide v6
.end method

.method private getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    .locals 14
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "prevLine"    # I
    .param p3, "y"    # F

    .prologue
    .line 5280
    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v8

    .line 5281
    .local v8, "trueLine":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v12

    move/from16 v0, p2

    if-le v0, v12, :cond_1

    .line 5284
    :cond_0
    return v8

    .line 5282
    :cond_1
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v12

    if-lez v12, :cond_0

    if-ltz p2, :cond_0

    .line 5287
    sub-int v12, v8, p2

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_2

    .line 5289
    return v8

    .line 5292
    :cond_2
    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v12

    int-to-float v9, v12

    .line 5293
    .local v9, "verticalOffset":F
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    .line 5294
    .local v4, "lineCount":I
    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLineHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v7, v12, v13

    .line 5296
    .local v7, "slop":F
    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    int-to-float v12, v12

    add-float v2, v12, v9

    .line 5297
    .local v2, "firstLineTop":F
    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    int-to-float v12, v12

    add-float v6, v12, v9

    .line 5298
    .local v6, "prevLineTop":F
    sub-float v12, v6, v7

    add-float v13, v2, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 5300
    .local v11, "yTopBound":F
    add-int/lit8 v12, v4, -0x1

    invoke-virtual {p1, v12}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v12

    int-to-float v12, v12

    add-float v3, v12, v9

    .line 5301
    .local v3, "lastLineBottom":F
    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v12

    int-to-float v12, v12

    add-float v5, v12, v9

    .line 5302
    .local v5, "prevLineBottom":F
    add-float v12, v5, v7

    sub-float v13, v3, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 5306
    .local v10, "yBottomBound":F
    cmpg-float v12, p3, v11

    if-gtz v12, :cond_3

    .line 5307
    add-int/lit8 v12, p2, -0x1

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5313
    .local v1, "currLine":I
    :goto_0
    return v1

    .line 5308
    .end local v1    # "currLine":I
    :cond_3
    cmpl-float v12, p3, v10

    if-ltz v12, :cond_4

    .line 5309
    add-int/lit8 v12, p2, 0x1

    add-int/lit8 v13, v4, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v1

    .restart local v1    # "currLine":I
    goto :goto_0

    .line 5311
    .end local v1    # "currLine":I
    :cond_4
    move/from16 v1, p2

    .restart local v1    # "currLine":I
    goto :goto_0
.end method

.method private static getDescendantViewScale(Landroid/view/View;)F
    .locals 5
    .param p0, "descendant"    # Landroid/view/View;

    .prologue
    .line 4271
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v3

    .line 4270
    const/high16 v4, 0x3f800000    # 1.0f

    .line 4271
    mul-float v0, v4, v3

    .line 4273
    .local v0, "scale":F
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 4274
    .local v2, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 4275
    check-cast v1, Landroid/view/View;

    .line 4276
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x1020002

    if-ne v3, v4, :cond_1

    .line 4283
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return v0

    .line 4279
    .restart local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v0, v3

    .line 4281
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0
.end method

.method private getDisplayHeightPixels()I
    .locals 3

    .prologue
    .line 6450
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "force_fsg_nav_bar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6451
    sget-object v0, Landroid/widget/Editor;->sTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 6452
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Landroid/widget/Editor;->sTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 6454
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Landroid/widget/Editor;->sTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 6455
    sget-object v0, Landroid/widget/Editor;->sTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0

    .line 6457
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method private getErrorX()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x41c80000    # 25.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 506
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->density:F

    .line 508
    .local v4, "scale":F
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v6, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 510
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    .line 513
    .local v2, "layoutDirection":I
    packed-switch v2, :pswitch_data_0

    .line 516
    :pswitch_0
    if-eqz v0, :cond_0

    iget v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :cond_0
    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    mul-float v6, v8, v4

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int v3, v5, v6

    .line 517
    .local v3, "offset":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v6}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    .line 518
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    .line 517
    sub-int/2addr v5, v6

    add-int v1, v5, v3

    .line 525
    .local v1, "errorX":I
    :goto_0
    return v1

    .line 521
    .end local v1    # "errorX":I
    .end local v3    # "offset":I
    :pswitch_1
    if-eqz v0, :cond_1

    iget v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    :cond_1
    div-int/lit8 v5, v5, 0x2

    mul-float v6, v8, v4

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v3, v5, v6

    .line 522
    .restart local v3    # "offset":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    add-int v1, v5, v3

    .line 523
    .restart local v1    # "errorX":I
    goto :goto_0

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getErrorY()I
    .locals 10

    .prologue
    .line 537
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 538
    .local v0, "compoundPaddingTop":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getBottom()I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    .line 539
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v8

    .line 538
    sub-int/2addr v7, v8

    sub-int v6, v7, v0

    .line 541
    .local v6, "vspace":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, v7, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 543
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v4

    .line 545
    .local v4, "layoutDirection":I
    packed-switch v4, :pswitch_data_0

    .line 548
    :pswitch_0
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 555
    .local v2, "height":I
    :goto_0
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    add-int v3, v0, v7

    .line 561
    .local v3, "icontop":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v5, v7, Landroid/util/DisplayMetrics;->density:F

    .line 562
    .local v5, "scale":F
    add-int v7, v3, v2

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v5

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    return v7

    .line 548
    .end local v2    # "height":I
    .end local v3    # "icontop":I
    .end local v5    # "scale":F
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "height":I
    goto :goto_0

    .line 551
    .end local v2    # "height":I
    :pswitch_1
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .restart local v2    # "height":I
    goto :goto_0

    .end local v2    # "height":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "height":I
    goto :goto_0

    .line 545
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getLastTapPosition()I
    .locals 2

    .prologue
    .line 1180
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    .line 1181
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 1182
    .local v0, "lastTapPosition":I
    if-ltz v0, :cond_1

    .line 1184
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1185
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1187
    :cond_0
    return v0

    .line 1191
    .end local v0    # "lastTapPosition":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getLastTouchOffsets()J
    .locals 6

    .prologue
    .line 1049
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 1050
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 1051
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 1052
    .local v0, "maxOffset":I
    invoke-static {v1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4
.end method

.method private getPositionListener()Landroid/widget/Editor$PositionListener;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 929
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-nez v0, :cond_0

    .line 930
    new-instance v0, Landroid/widget/Editor$PositionListener;

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$PositionListener;)V

    iput-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    .line 932
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    return-object v0
.end method

.method private getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;IZ)F
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "hintLayout"    # Landroid/text/Layout;
    .param p3, "offset"    # I
    .param p4, "clamped"    # Z

    .prologue
    .line 1723
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1724
    if-eqz p2, :cond_0

    .line 1725
    invoke-virtual {p2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1728
    :cond_0
    invoke-virtual {p1, p3, p4}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    return v0

    .line 1726
    :cond_1
    invoke-virtual {p2, p3, p4}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method private getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 2169
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2170
    const v3, 0x1090103

    .line 2169
    invoke-static {v2, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2172
    .local v0, "shadowView":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 2173
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unable to inflate text drag thumbnail"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2176
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sget v3, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    if-le v2, v3, :cond_1

    .line 2177
    sget v2, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    invoke-interface {p1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2179
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2180
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2182
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2183
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2185
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2188
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2189
    .local v1, "size":I
    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 2191
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 2192
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 2193
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method private hasPasswordTransformationMethod()Z
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method private hideCursorControllers()V
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 639
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 633
    return-void

    .line 636
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    goto :goto_0
.end method

.method private hideError()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 494
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 487
    return-void
.end method

.method private hideSpanControllers()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    .line 627
    :cond_0
    return-void
.end method

.method private static isBigFontMode()Z
    .locals 2

    .prologue
    .line 6439
    invoke-static {}, Landroid/content/res/MiuiConfiguration;->getScaleMode()I

    move-result v0

    .line 6440
    .local v0, "scaleMode":I
    sparse-switch v0, :sswitch_data_0

    .line 6445
    const/4 v1, 0x0

    return v1

    .line 6443
    :sswitch_0
    const/4 v1, 0x1

    return v1

    .line 6440
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1939
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 1940
    .local v1, "spannable":Landroid/text/Spannable;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 1941
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    .line 1940
    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 1942
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1943
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 1944
    const/4 v3, 0x1

    return v3

    .line 1942
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1947
    :cond_1
    return v6
.end method

.method private isOffsetVisible(I)Z
    .locals 7
    .param p1, "offset"    # I

    .prologue
    .line 981
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 982
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    const/4 v5, 0x0

    return v5

    .line 984
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 985
    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 986
    .local v2, "lineBottom":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 987
    .local v3, "lineTop":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    float-to-int v4, v5

    .line 988
    .local v4, "primaryHorizontal":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v5, v4

    .line 989
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v6

    add-int/2addr v6, v2

    .line 988
    invoke-direct {p0, v5, v6}, Landroid/widget/Editor;->isPositionVisible(II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 991
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v5, v4

    .line 992
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v6

    add-int/2addr v6, v3

    .line 990
    invoke-direct {p0, v5, v6}, Landroid/widget/Editor;->isPositionVisible(II)Z

    move-result v5

    .line 988
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private isPositionOnText(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 999
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1000
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    return v3

    .line 1002
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v1

    .line 1003
    .local v1, "line":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    .line 1005
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    return v3

    .line 1006
    :cond_1
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    return v3

    .line 1007
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private isPositionVisible(II)Z
    .locals 11
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 941
    sget-object v5, Landroid/widget/Editor;->TEMP_POSITION:[F

    monitor-enter v5

    .line 942
    :try_start_0
    sget-object v2, Landroid/widget/Editor;->TEMP_POSITION:[F

    .line 943
    .local v2, "position":[F
    int-to-float v4, p1

    const/4 v6, 0x0

    aput v4, v2, v6

    .line 944
    int-to-float v4, p2

    const/4 v6, 0x1

    aput v4, v2, v6

    .line 945
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 947
    :goto_0
    if-eqz v3, :cond_5

    .line 948
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-eq v3, v4, :cond_0

    .line 950
    const/4 v4, 0x0

    aget v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    aput v6, v2, v4

    .line 951
    const/4 v4, 0x1

    aget v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    aput v6, v2, v4

    .line 954
    :cond_0
    const/4 v4, 0x0

    aget v4, v2, v4

    cmpg-float v4, v4, v10

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    aget v4, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-float v4, v4, v10

    if-gez v4, :cond_2

    :cond_1
    monitor-exit v5

    .line 956
    return v8

    .line 955
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    aget v4, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_1

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_1

    .line 959
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_3

    .line 960
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 963
    :cond_3
    const/4 v4, 0x0

    aget v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    aput v6, v2, v4

    .line 964
    const/4 v4, 0x1

    aget v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    aput v6, v2, v4

    .line 966
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 967
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_4

    .line 968
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "view":Landroid/view/View;
    goto :goto_0

    .line 971
    .end local v3    # "view":Landroid/view/View;
    :cond_4
    const/4 v3, 0x0

    .local v3, "view":Landroid/view/View;
    goto :goto_0

    .end local v1    # "parent":Landroid/view/ViewParent;
    .end local v3    # "view":Landroid/view/View;
    :cond_5
    monitor-exit v5

    .line 977
    return v9

    .line 941
    .end local v2    # "position":[F
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static isValidRange(Ljava/lang/CharSequence;II)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v0, 0x0

    .line 5877
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private resumeBlink()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 681
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 678
    :cond_0
    return-void
.end method

.method private selectCurrentWord()Z
    .locals 18

    .prologue
    .line 770
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v16

    if-nez v16, :cond_0

    .line 771
    const/16 v16, 0x0

    return v16

    .line 774
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->hasPasswordTransformationMethod()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->selectAllText()Z

    move-result v16

    return v16

    .line 781
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    .line 782
    .local v2, "inputType":I
    and-int/lit8 v3, v2, 0xf

    .line 783
    .local v3, "klass":I
    and-int/lit16 v14, v2, 0xff0

    .line 786
    .local v14, "variation":I
    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v3, v0, :cond_2

    .line 787
    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v3, v0, :cond_3

    .line 793
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->selectAllText()Z

    move-result v16

    return v16

    .line 788
    :cond_3
    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v3, v0, :cond_2

    .line 789
    const/16 v16, 0x10

    move/from16 v0, v16

    if-eq v14, v0, :cond_2

    .line 790
    const/16 v16, 0x20

    move/from16 v0, v16

    if-eq v14, v0, :cond_2

    .line 791
    const/16 v16, 0xd0

    move/from16 v0, v16

    if-eq v14, v0, :cond_2

    .line 792
    const/16 v16, 0xb0

    move/from16 v0, v16

    if-eq v14, v0, :cond_2

    .line 796
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v4

    .line 797
    .local v4, "lastTouchOffsets":J
    invoke-static {v4, v5}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v7

    .line 798
    .local v7, "minOffset":I
    invoke-static {v4, v5}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v6

    .line 801
    .local v6, "maxOffset":I
    if-ltz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v16

    move/from16 v0, v16

    if-le v7, v0, :cond_5

    :cond_4
    const/16 v16, 0x0

    return v16

    .line 802
    :cond_5
    if-ltz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v16

    move/from16 v0, v16

    if-le v6, v0, :cond_7

    :cond_6
    const/16 v16, 0x0

    return v16

    .line 807
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Landroid/text/Spanned;

    .line 808
    const-class v17, Landroid/text/style/URLSpan;

    .line 807
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v7, v6, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/URLSpan;

    .line 809
    .local v13, "urlSpans":[Landroid/text/style/URLSpan;
    array-length v0, v13

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_9

    .line 810
    const/16 v16, 0x0

    aget-object v12, v13, v16

    .line 811
    .local v12, "urlSpan":Landroid/text/style/URLSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Landroid/text/Spanned;

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 812
    .local v11, "selectionStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Landroid/text/Spanned;

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 829
    .end local v12    # "urlSpan":Landroid/text/style/URLSpan;
    .local v10, "selectionEnd":I
    :cond_8
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Landroid/widget/Editor;->setSelectionTranslation(II)V

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Landroid/text/Spannable;

    move-object/from16 v0, v16

    invoke-static {v0, v11, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 832
    if-le v10, v11, :cond_c

    const/16 v16, 0x1

    :goto_1
    return v16

    .line 814
    .end local v10    # "selectionEnd":I
    .end local v11    # "selectionStart":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v15

    .line 815
    .local v15, "wordIterator":Landroid/text/method/WordIterator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v7, v6}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 817
    invoke-virtual {v15, v7}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v11

    .line 818
    .restart local v11    # "selectionStart":I
    invoke-virtual {v15, v6}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v10

    .line 820
    .restart local v10    # "selectionEnd":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_a

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v10, v0, :cond_b

    .line 823
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/Editor;->getCharRange(I)J

    move-result-wide v8

    .line 824
    .local v8, "range":J
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v11

    .line 825
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v10

    goto :goto_0

    .line 821
    .end local v8    # "range":J
    :cond_b
    if-ne v11, v10, :cond_8

    goto :goto_2

    .line 832
    .end local v15    # "wordIterator":Landroid/text/method/WordIterator;
    :cond_c
    const/16 v16, 0x0

    goto :goto_1
.end method

.method private sendUpdateSelection()V
    .locals 7

    .prologue
    .line 1433
    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iget v1, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-gtz v1, :cond_1

    .line 1434
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1435
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1436
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 1437
    .local v2, "selectionStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1438
    .local v3, "selectionEnd":I
    const/4 v4, -0x1

    .line 1439
    .local v4, "candStart":I
    const/4 v5, -0x1

    .line 1440
    .local v5, "candEnd":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 1441
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    .line 1442
    .local v6, "sp":Landroid/text/Spannable;
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 1443
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 1447
    .end local v6    # "sp":Landroid/text/Spannable;
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 1432
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "selectionStart":I
    .end local v3    # "selectionEnd":I
    .end local v4    # "candStart":I
    .end local v5    # "candEnd":I
    :cond_1
    return-void
.end method

.method private setErrorIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 476
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 477
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez v0, :cond_0

    .line 478
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0    # "dr":Landroid/widget/TextView$Drawables;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v0    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 480
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView$Drawables;->setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V

    .line 482
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 483
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 484
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 475
    return-void
.end method

.method private setSelectionTranslation(II)V
    .locals 10
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 836
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v6

    if-nez v6, :cond_0

    .line 837
    return-void

    .line 840
    :cond_0
    const/4 v6, 0x2

    new-array v5, v6, [F

    .local v5, "translationArray":[F
    fill-array-data v5, :array_0

    .line 841
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 843
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_2

    if-le p2, p1, :cond_2

    .line 844
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    .line 845
    .local v3, "positionStart":F
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 846
    .local v1, "positionEnd":F
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 848
    .local v4, "selectionOld":I
    if-lt v4, p1, :cond_1

    if-le v4, p2, :cond_3

    .line 849
    :cond_1
    sub-float v6, v1, v3

    div-float/2addr v6, v9

    aput v6, v5, v7

    .line 850
    sub-float v6, v3, v1

    div-float/2addr v6, v9

    aput v6, v5, v8

    .line 863
    .end local v1    # "positionEnd":F
    .end local v3    # "positionStart":F
    .end local v4    # "selectionOld":I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/Editor$SelectionModifierCursorController;->setTranslationCache([F)V

    .line 835
    return-void

    .line 852
    .restart local v1    # "positionEnd":F
    .restart local v3    # "positionStart":F
    .restart local v4    # "selectionOld":I
    :cond_3
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    .line 853
    .local v2, "positionOld":F
    if-ne v4, p1, :cond_4

    .line 854
    sub-float v6, v2, v1

    aput v6, v5, v8

    goto :goto_0

    .line 855
    :cond_4
    if-ne v4, p2, :cond_5

    .line 856
    sub-float v6, v2, v3

    aput v6, v5, v7

    goto :goto_0

    .line 858
    :cond_5
    sub-float v6, v2, v3

    aput v6, v5, v7

    .line 859
    sub-float v6, v2, v1

    aput v6, v5, v8

    goto :goto_0

    .line 840
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private shouldBlink()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2115
    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2117
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 2118
    .local v1, "start":I
    if-gez v1, :cond_1

    return v2

    .line 2115
    .end local v1    # "start":I
    :cond_0
    return v2

    .line 2120
    .restart local v1    # "start":I
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 2121
    .local v0, "end":I
    if-gez v0, :cond_2

    return v2

    .line 2123
    :cond_2
    if-ne v1, v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private shouldOfferToShowSuggestions()Z
    .locals 14

    .prologue
    .line 1877
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    .line 1878
    .local v10, "text":Ljava/lang/CharSequence;
    instance-of v13, v10, Landroid/text/Spannable;

    if-nez v13, :cond_0

    const/4 v13, 0x0

    return v13

    :cond_0
    move-object v8, v10

    .line 1880
    check-cast v8, Landroid/text/Spannable;

    .line 1881
    .local v8, "spannable":Landroid/text/Spannable;
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 1882
    .local v5, "selectionStart":I
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 1884
    .local v4, "selectionEnd":I
    const-class v13, Landroid/text/style/SuggestionSpan;

    .line 1883
    invoke-interface {v8, v5, v4, v13}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/SuggestionSpan;

    .line 1885
    .local v9, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v13, v9

    if-nez v13, :cond_1

    .line 1886
    const/4 v13, 0x0

    return v13

    .line 1888
    :cond_1
    if-ne v5, v4, :cond_4

    .line 1890
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v13, v9

    if-ge v1, v13, :cond_3

    .line 1891
    aget-object v13, v9, v1

    invoke-virtual {v13}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    if-lez v13, :cond_2

    .line 1892
    const/4 v13, 0x1

    return v13

    .line 1890
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1895
    :cond_3
    const/4 v13, 0x0

    return v13

    .line 1897
    .end local v1    # "i":I
    :cond_4
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1898
    .local v3, "minSpanStart":I
    const/4 v2, 0x0

    .line 1899
    .local v2, "maxSpanEnd":I
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v12

    .line 1900
    .local v12, "unionOfSpansCoveringSelectionStartStart":I
    const/4 v11, 0x0

    .line 1901
    .local v11, "unionOfSpansCoveringSelectionStartEnd":I
    const/4 v0, 0x0

    .line 1902
    .local v0, "hasValidSuggestions":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v13, v9

    if-ge v1, v13, :cond_9

    .line 1903
    aget-object v13, v9, v1

    invoke-interface {v8, v13}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 1904
    .local v7, "spanStart":I
    aget-object v13, v9, v1

    invoke-interface {v8, v13}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 1905
    .local v6, "spanEnd":I
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1906
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1907
    if-lt v5, v7, :cond_5

    if-le v5, v6, :cond_6

    .line 1902
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1912
    :cond_6
    if-nez v0, :cond_7

    aget-object v13, v9, v1

    invoke-virtual {v13}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    if-lez v13, :cond_8

    :cond_7
    const/4 v0, 0x1

    .line 1914
    :goto_3
    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1916
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_2

    .line 1912
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 1918
    .end local v6    # "spanEnd":I
    .end local v7    # "spanStart":I
    :cond_9
    if-nez v0, :cond_a

    .line 1919
    const/4 v13, 0x0

    return v13

    .line 1921
    :cond_a
    if-lt v12, v11, :cond_b

    .line 1923
    const/4 v13, 0x0

    return v13

    .line 1925
    :cond_b
    if-lt v3, v12, :cond_c

    .line 1926
    if-le v2, v11, :cond_d

    .line 1929
    :cond_c
    const/4 v13, 0x0

    return v13

    .line 1931
    :cond_d
    const/4 v13, 0x1

    return v13
.end method

.method private showError()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    .line 427
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_0

    .line 428
    iput-boolean v8, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 429
    return-void

    .line 432
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-nez v4, :cond_1

    .line 433
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 435
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x109010e

    .line 434
    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 437
    .local v0, "err":Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 438
    .local v2, "scale":F
    new-instance v4, Landroid/widget/Editor$ErrorPopup;

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    const/high16 v6, 0x42480000    # 50.0f

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/Editor$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 439
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->setFocusable(Z)V

    .line 442
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4, v8}, Landroid/widget/Editor$ErrorPopup;->setInputMethodMode(I)V

    .line 445
    .end local v0    # "err":Landroid/widget/TextView;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "scale":F
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 446
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v3}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 447
    iget-object v4, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v6

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/Editor$ErrorPopup;->showAsDropDown(Landroid/view/View;II)V

    .line 450
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    .line 426
    return-void
.end method

.method private startActivityFromContext(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6430
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 6431
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6429
    :goto_0
    return-void

    .line 6433
    :cond_0
    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6434
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startSelectionActionModeInternal()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1821
    iget-object v5, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_0

    .line 1823
    iget-object v5, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v5}, Landroid/view/ActionMode;->invalidate()V

    .line 1824
    return v10

    .line 1827
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->checkFieldAndSelectCurrentWord()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1828
    return v10

    .line 1831
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v4

    .line 1835
    .local v4, "willExtract":Z
    if-nez v4, :cond_3

    .line 1837
    iget-object v5, p0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v5, :cond_3

    .line 1838
    const/4 v3, 0x0

    .line 1839
    .local v3, "isCtsRunning":Z
    iget-object v5, p0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v0

    .line 1840
    .local v0, "callbackClassPackageName":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1841
    const-string/jumbo v5, "android.widget.cts"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1843
    .end local v3    # "isCtsRunning":Z
    :cond_2
    if-eqz v3, :cond_3

    .line 1844
    iget-object v5, p0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    sget-object v6, Landroid/widget/Editor;->mMockActionMode:Landroid/view/ActionMode;

    new-instance v7, Lcom/android/internal/view/menu/ActionMenu;

    .line 1845
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 1844
    invoke-direct {v7, v8}, Lcom/android/internal/view/menu/ActionMenu;-><init>(Landroid/content/Context;)V

    invoke-interface {v5, v6, v7}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    .line 1846
    .local v1, "created":Z
    if-nez v1, :cond_3

    .line 1847
    iput-object v9, p0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 1853
    .end local v0    # "callbackClassPackageName":Ljava/lang/String;
    .end local v1    # "created":Z
    :cond_3
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v5, :cond_4

    .line 1855
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 1856
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_4

    .line 1857
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v10, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 1860
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    const/4 v5, 0x1

    return v5
.end method

.method private stopTextActionModeWithPreservingSelection()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1994
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1995
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 1997
    :cond_0
    iput-boolean v1, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 1998
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1999
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 1993
    return-void
.end method

.method private suspendBlink()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 672
    :cond_0
    return-void
.end method

.method private touchPositionIsInSelection()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 907
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 908
    .local v4, "selectionStart":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 910
    .local v3, "selectionEnd":I
    if-ne v4, v3, :cond_0

    .line 911
    return v7

    .line 914
    :cond_0
    if-le v4, v3, :cond_1

    .line 915
    move v5, v4

    .line 916
    .local v5, "tmp":I
    move v4, v3

    .line 917
    move v3, v5

    .line 918
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 921
    .end local v5    # "tmp":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 922
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 923
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 925
    .local v0, "maxOffset":I
    if-lt v1, v4, :cond_2

    if-ge v0, v3, :cond_2

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_2
    move v6, v7

    goto :goto_0
.end method

.method private updateCursorPosition(IIIF)V
    .locals 7
    .param p1, "cursorIndex"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "horizontal"    # F

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 2062
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    if-nez v2, :cond_0

    .line 2063
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2064
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v4, v4, Landroid/widget/TextView;->mCursorDrawableRes:I

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 2063
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2066
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 2067
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2068
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 2069
    .local v1, "width":I
    sub-float v2, p4, v6

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 2070
    float-to-int v2, p4

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 2071
    .local v0, "left":I
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    add-int v4, v0, v1

    .line 2072
    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, p3

    .line 2071
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2061
    return-void
.end method

.method private updateSpellCheckSpans(IIZ)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "createSpellChecker"    # Z

    .prologue
    .line 647
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 648
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 650
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 653
    new-instance v0, Landroid/widget/SpellChecker;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 655
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    goto :goto_0
.end method


# virtual methods
.method public addSpanWatchers(Landroid/text/Spannable;)V
    .locals 4
    .param p1, "text"    # Landroid/text/Spannable;

    .prologue
    const/16 v3, 0x12

    const/4 v2, 0x0

    .line 2266
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 2268
    .local v0, "textLength":I
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    .line 2269
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2272
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-nez v1, :cond_1

    .line 2273
    new-instance v1, Landroid/widget/Editor$SpanController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$SpanController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    .line 2275
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2265
    return-void
.end method

.method adjustInputType(ZZZZ)V
    .locals 2
    .param p1, "password"    # Z
    .param p2, "passwordInputType"    # Z
    .param p3, "webPasswordInputType"    # Z
    .param p4, "numberPasswordInputType"    # Z

    .prologue
    .line 690
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 691
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 692
    :cond_0
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 695
    :cond_1
    if-eqz p3, :cond_2

    .line 696
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0xe0

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 686
    :cond_2
    :goto_0
    return-void

    .line 699
    :cond_3
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 700
    if-eqz p4, :cond_2

    .line 701
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method areSuggestionsShown()Z
    .locals 1

    .prologue
    .line 2102
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beginBatchEdit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1251
    iput-boolean v5, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 1252
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1253
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    .line 1254
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1255
    .local v1, "nesting":I
    if-ne v1, v5, :cond_0

    .line 1256
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    .line 1257
    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 1258
    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_1

    .line 1261
    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1262
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1268
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v2}, Landroid/widget/Editor$UndoInputFilter;->beginBatchEdit()V

    .line 1269
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 1250
    .end local v1    # "nesting":I
    :cond_0
    return-void

    .line 1264
    .restart local v1    # "nesting":I
    :cond_1
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1265
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1266
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_0
.end method

.method canRedo()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 322
    new-array v0, v1, [Landroid/content/UndoOwner;

    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v3, v0, v2

    .line 323
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-boolean v3, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v3, v0}, Landroid/content/UndoManager;->countRedos([Landroid/content/UndoOwner;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method canUndo()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 317
    new-array v0, v1, [Landroid/content/UndoOwner;

    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v3, v0, v2

    .line 318
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-boolean v3, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v3, v0}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method checkFieldAndSelectCurrentWord()Z
    .locals 2

    .prologue
    .line 1804
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1810
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1812
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v0

    return v0

    .line 1805
    :cond_0
    const-string/jumbo v0, "TextView"

    .line 1806
    const-string/jumbo v1, "TextView does not support text selection. Selection cancelled."

    .line 1805
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    const/4 v0, 0x0

    return v0

    .line 1814
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method createInputContentTypeIfNeeded()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_0

    .line 567
    new-instance v0, Landroid/widget/Editor$InputContentType;

    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 565
    :cond_0
    return-void
.end method

.method createInputMethodStateIfNeeded()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-nez v0, :cond_0

    .line 573
    new-instance v0, Landroid/widget/Editor$InputMethodState;

    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 571
    :cond_0
    return-void
.end method

.method public endBatchEdit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1275
    iput-boolean v2, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 1276
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1277
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    .line 1278
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, -0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1279
    .local v1, "nesting":I
    if-nez v1, :cond_0

    .line 1280
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 1274
    .end local v1    # "nesting":I
    :cond_0
    return-void
.end method

.method ensureEndedBatchEdit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1286
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1287
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_0

    .line 1288
    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1289
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 1285
    :cond_0
    return-void
.end method

.method extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 6
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    .line 1313
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method extractedTextModeWillBeStarted()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1864
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1865
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1866
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    :cond_0
    return v1

    .line 1868
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return v1
.end method

.method finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .locals 1
    .param p1, "ims"    # Landroid/widget/Editor$InputMethodState;

    .prologue
    .line 1294
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1295
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->endBatchEdit()V

    .line 1297
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    .line 1298
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 1299
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 1306
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    .line 1293
    return-void

    .line 1300
    :cond_2
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_1

    .line 1302
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_0
.end method

.method forgetUndoRedo()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 311
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/content/UndoOwner;

    iget-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 312
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    .line 313
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    .line 310
    return-void
.end method

.method getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2032
    iget-boolean v1, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 2033
    return-object v2

    .line 2036
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-nez v1, :cond_1

    .line 2037
    new-instance v1, Landroid/widget/Editor$InsertionPointCursorController;

    invoke-direct {v1, p0, v2}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$InsertionPointCursorController;)V

    iput-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 2039
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2040
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2043
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    return-object v1
.end method

.method getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2047
    iget-boolean v1, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 2048
    return-object v2

    .line 2051
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-nez v1, :cond_1

    .line 2052
    new-instance v1, Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 2054
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2055
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2058
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    return-object v1
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    .line 876
    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 878
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method hasInsertionController()Z
    .locals 1

    .prologue
    .line 2021
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    return v0
.end method

.method hasSelectionController()Z
    .locals 1

    .prologue
    .line 2028
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    return v0
.end method

.method hideCursorAndSpanControllers()V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 624
    invoke-direct {p0}, Landroid/widget/Editor;->hideSpanControllers()V

    .line 622
    return-void
.end method

.method hideInsertionPointCursorController()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 613
    :cond_0
    return-void
.end method

.method invalidateHandlesAndActionMode()V
    .locals 1

    .prologue
    .line 1641
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->invalidateHandles()V

    .line 1644
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_1

    .line 1645
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->invalidateHandle()V

    .line 1647
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 1648
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 1640
    :cond_2
    return-void
.end method

.method invalidateTextDisplayList()V
    .locals 3

    .prologue
    .line 1685
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v1, :cond_1

    .line 1686
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1687
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 1686
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1684
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method invalidateTextDisplayList(Landroid/text/Layout;II)V
    .locals 10
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1656
    iget-object v8, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v8, :cond_2

    instance-of v8, p1, Landroid/text/DynamicLayout;

    if-eqz v8, :cond_2

    .line 1657
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 1658
    .local v4, "firstLine":I
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .local v6, "lastLine":I
    move-object v3, p1

    .line 1660
    check-cast v3, Landroid/text/DynamicLayout;

    .line 1661
    .local v3, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v0

    .line 1662
    .local v0, "blockEndLines":[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v2

    .line 1663
    .local v2, "blockIndices":[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v7

    .line 1665
    .local v7, "numberOfBlocks":I
    const/4 v5, 0x0

    .line 1667
    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 1668
    aget v8, v0, v5

    if-lt v8, v4, :cond_3

    .line 1673
    :cond_0
    :goto_1
    if-ge v5, v7, :cond_2

    .line 1674
    aget v1, v2, v5

    .line 1675
    .local v1, "blockIndex":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 1676
    iget-object v8, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v8, v8, v1

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 1678
    :cond_1
    aget v8, v0, v5

    if-lt v8, v6, :cond_4

    .line 1655
    .end local v0    # "blockEndLines":[I
    .end local v1    # "blockIndex":I
    .end local v2    # "blockIndices":[I
    .end local v3    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v4    # "firstLine":I
    .end local v5    # "i":I
    .end local v6    # "lastLine":I
    .end local v7    # "numberOfBlocks":I
    :cond_2
    return-void

    .line 1669
    .restart local v0    # "blockEndLines":[I
    .restart local v2    # "blockIndices":[I
    .restart local v3    # "dynamicLayout":Landroid/text/DynamicLayout;
    .restart local v4    # "firstLine":I
    .restart local v5    # "i":I
    .restart local v6    # "lastLine":I
    .restart local v7    # "numberOfBlocks":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1679
    .restart local v1    # "blockIndex":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method isCursorVisible()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInSwipeSelectionMode()Z
    .locals 1

    .prologue
    .line 1244
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1245
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-get0(Landroid/widget/Editor$SelectionModifierCursorController;)Z

    move-result v0

    return v0

    .line 1247
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method makeBlink()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2127
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 2129
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$Blink;

    invoke-direct {v0, p0, v2}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$Blink;)V

    iput-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 2130
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2131
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2126
    :cond_1
    :goto_0
    return-void

    .line 2133
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 350
    iget-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    if-eqz v1, :cond_0

    .line 351
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 352
    iput-boolean v3, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 355
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 358
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 361
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_2

    .line 362
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 363
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 365
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 366
    const/4 v2, 0x1

    .line 365
    invoke-direct {p0, v3, v1, v2}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 368
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasTransientState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 369
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 373
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 376
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 349
    :cond_3
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 2084
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-nez v0, :cond_0

    .line 2085
    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    .line 2090
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 2083
    return-void

    .line 2087
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->-wrap0(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    goto :goto_0
.end method

.method onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    .line 2283
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 381
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 382
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 385
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 389
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 393
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_3

    .line 394
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 397
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 398
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 401
    :cond_4
    invoke-direct {p0}, Landroid/widget/Editor;->discardTextDisplayLists()V

    .line 403
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_5

    .line 404
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 407
    iput-object v2, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 410
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 411
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 380
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I

    .prologue
    .line 1455
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v15

    .line 1456
    .local v15, "selectionStart":I
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v14

    .line 1458
    .local v14, "selectionEnd":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1459
    .local v12, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v12, :cond_2

    iget v7, v12, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v7, :cond_2

    .line 1460
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    .line 1461
    .local v6, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v6, :cond_2

    .line 1462
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1463
    const/4 v13, 0x0

    .line 1464
    .local v13, "reported":Z
    iget-boolean v7, v12, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v7, :cond_0

    iget-boolean v7, v12, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v7, :cond_1

    .line 1468
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->reportExtractedText()Z

    move-result v13

    .line 1472
    .end local v13    # "reported":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p3, :cond_2

    .line 1473
    iget-object v7, v12, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v8, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1474
    iget-object v7, v12, Landroid/widget/Editor$InputMethodState;->mTmpOffset:[F

    iget-object v8, v12, Landroid/widget/Editor$InputMethodState;->mTmpOffset:[F

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v9, v8, v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v8, v7, v9

    .line 1476
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    iget-object v8, v12, Landroid/widget/Editor$InputMethodState;->mTmpOffset:[F

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1477
    iget-object v7, v12, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget-object v8, v12, Landroid/widget/Editor$InputMethodState;->mTmpOffset:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    iget-object v9, v12, Landroid/widget/Editor$InputMethodState;->mTmpOffset:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 1479
    iget-object v7, v12, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v8, 0x0

    move/from16 v0, p5

    int-to-float v9, v0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 1481
    iget-object v7, v12, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget-object v8, v12, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    float-to-double v8, v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v8, v8

    .line 1482
    iget-object v9, v12, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    float-to-double v10, v9

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v10, v10, v16

    double-to-int v9, v10

    .line 1483
    iget-object v10, v12, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    float-to-double v10, v10

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v10, v10, v16

    double-to-int v10, v10

    .line 1484
    iget-object v11, v12, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v11, v0

    .line 1481
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1486
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1487
    iget-object v8, v12, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, v12, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 1488
    iget-object v10, v12, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, v12, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    .line 1486
    invoke-virtual/range {v6 .. v11}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 1493
    .end local v6    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-eqz v7, :cond_3

    .line 1494
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v7, v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    .line 1497
    :cond_3
    if-eqz p3, :cond_4

    if-ne v15, v14, :cond_4

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/Editor;->mCursorCount:I

    if-lez v7, :cond_4

    .line 1498
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor;->drawCursor(Landroid/graphics/Canvas;I)V

    .line 1501
    const/16 p3, 0x0

    .line 1504
    .end local p3    # "highlight":Landroid/graphics/Path;
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->canHaveDisplayList()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1505
    invoke-direct/range {p0 .. p5}, Landroid/widget/Editor;->drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 1454
    :goto_0
    return-void

    .line 1508
    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method onDrop(Landroid/view/DragEvent;)V
    .locals 24
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 2208
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v21, ""

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2209
    .local v4, "content":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 2210
    .local v3, "clipData":Landroid/content/ClipData;
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v11

    .line 2211
    .local v11, "itemCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_0

    .line 2212
    invoke-virtual {v3, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    .line 2213
    .local v10, "item":Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2211
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2216
    .end local v10    # "item":Landroid/content/ClipData$Item;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v23

    invoke-virtual/range {v21 .. v23}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v16

    .line 2218
    .local v16, "offset":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v12

    .line 2219
    .local v12, "localState":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 2220
    .local v6, "dragLocalState":Landroid/widget/Editor$DragLocalState;
    instance-of v0, v12, Landroid/widget/Editor$DragLocalState;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object v6, v12

    .line 2221
    check-cast v6, Landroid/widget/Editor$DragLocalState;

    .line 2223
    .end local v6    # "dragLocalState":Landroid/widget/Editor$DragLocalState;
    :cond_1
    if-eqz v6, :cond_3

    .line 2224
    iget-object v0, v6, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2

    const/4 v5, 0x1

    .line 2226
    .local v5, "dragDropIntoItself":Z
    :goto_1
    if-eqz v5, :cond_4

    .line 2227
    iget v0, v6, Landroid/widget/Editor$DragLocalState;->start:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    iget v0, v6, Landroid/widget/Editor$DragLocalState;->end:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 2229
    return-void

    .line 2224
    .end local v5    # "dragDropIntoItself":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 2223
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 2233
    .restart local v5    # "dragDropIntoItself":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v17

    .line 2234
    .local v17, "originalLength":I
    move/from16 v14, v16

    .line 2235
    .local v14, "min":I
    move/from16 v13, v16

    .line 2237
    .local v13, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    check-cast v21, Landroid/text/Spannable;

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2238
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 2240
    if-eqz v5, :cond_6

    .line 2241
    iget v8, v6, Landroid/widget/Editor$DragLocalState;->start:I

    .line 2242
    .local v8, "dragSourceStart":I
    iget v7, v6, Landroid/widget/Editor$DragLocalState;->end:I

    .line 2243
    .local v7, "dragSourceEnd":I
    move/from16 v0, v16

    if-gt v0, v8, :cond_5

    .line 2245
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    sub-int v19, v21, v17

    .line 2246
    .local v19, "shift":I
    add-int v8, v8, v19

    .line 2247
    add-int v7, v7, v19

    .line 2251
    .end local v19    # "shift":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 2254
    add-int/lit8 v21, v8, -0x1

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 2255
    .local v18, "prevCharIdx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    add-int/lit8 v22, v8, 0x1

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 2256
    .local v15, "nextCharIdx":I
    add-int/lit8 v21, v18, 0x1

    move/from16 v0, v21

    if-le v15, v0, :cond_6

    .line 2257
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v20

    .line 2258
    .local v20, "t":Ljava/lang/CharSequence;
    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v21

    if-eqz v21, :cond_6

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 2259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    add-int/lit8 v22, v18, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 2207
    .end local v7    # "dragSourceEnd":I
    .end local v8    # "dragSourceStart":I
    .end local v15    # "nextCharIdx":I
    .end local v18    # "prevCharIdx":I
    .end local v20    # "t":Ljava/lang/CharSequence;
    :cond_6
    return-void
.end method

.method onFocusChanged(ZI)V
    .locals 10
    .param p1, "focused"    # Z
    .param p2, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1056
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 1057
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    .line 1059
    if-eqz p1, :cond_c

    .line 1060
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1061
    .local v4, "selStart":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1065
    .local v3, "selEnd":I
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_9

    if-nez v4, :cond_9

    .line 1066
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v3, v5, :cond_8

    const/4 v0, 0x1

    .line 1068
    .local v0, "isFocusHighlighted":Z
    :goto_0
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1069
    if-eqz v0, :cond_a

    move v5, v6

    .line 1068
    :goto_1
    iput-boolean v5, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 1071
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_0

    if-ltz v4, :cond_0

    if-gez v3, :cond_6

    .line 1074
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTapPosition()I

    move-result v1

    .line 1075
    .local v1, "lastTapPosition":I
    if-ltz v1, :cond_1

    .line 1076
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1080
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v2

    .line 1081
    .local v2, "mMovement":Landroid/text/method/MovementMethod;
    if-eqz v2, :cond_2

    .line 1082
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v2, v8, v5, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 1090
    :cond_2
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    if-eqz v5, :cond_4

    .line 1091
    :cond_3
    if-ltz v4, :cond_4

    if-ltz v3, :cond_4

    .line 1101
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1104
    :cond_4
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_5

    .line 1105
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->selectAllText()Z

    .line 1108
    :cond_5
    iput-boolean v7, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1111
    .end local v1    # "lastTapPosition":I
    .end local v2    # "mMovement":Landroid/text/method/MovementMethod;
    :cond_6
    iput-boolean v6, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    .line 1112
    iput-boolean v6, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 1114
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v5, :cond_7

    .line 1115
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 1118
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1055
    .end local v0    # "isFocusHighlighted":Z
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :goto_2
    return-void

    .line 1066
    .restart local v3    # "selEnd":I
    .restart local v4    # "selStart":I
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "isFocusHighlighted":Z
    goto :goto_0

    .line 1065
    .end local v0    # "isFocusHighlighted":Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "isFocusHighlighted":Z
    goto :goto_0

    :cond_a
    move v5, v7

    .line 1069
    goto :goto_1

    :cond_b
    move v5, v6

    .line 1068
    goto :goto_1

    .line 1120
    .end local v0    # "isFocusHighlighted":Z
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :cond_c
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v5, :cond_d

    .line 1121
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 1124
    :cond_d
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1126
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1127
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1128
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 1140
    :goto_3
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v5, :cond_e

    .line 1141
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1144
    :cond_e
    iput-boolean v7, p0, Landroid/widget/Editor;->mFirstTouchUp:Z

    goto :goto_2

    .line 1130
    :cond_f
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1131
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isTemporarilyDetached()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1132
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 1136
    :goto_4
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    goto :goto_3

    .line 1134
    :cond_10
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    goto :goto_4
.end method

.method onLocaleChanged()V
    .locals 1

    .prologue
    .line 868
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 866
    return-void
.end method

.method onScreenStateChanged(I)V
    .locals 0
    .param p1, "screenState"    # I

    .prologue
    .line 662
    packed-switch p1, :pswitch_data_0

    .line 661
    :goto_0
    return-void

    .line 664
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    goto :goto_0

    .line 667
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    goto :goto_0

    .line 662
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onScrollChanged()V
    .locals 1

    .prologue
    .line 2106
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-eqz v0, :cond_0

    .line 2107
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    .line 2105
    :cond_0
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1220
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1221
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1224
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1225
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1226
    iput-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 1229
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 1230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 1231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 1235
    iput-boolean v2, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1236
    iput-boolean v2, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 1219
    :cond_2
    return-void
.end method

.method onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 1951
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v4

    invoke-static {v4}, Landroid/widget/Editor$InsertionPointCursorController;->-wrap0(Landroid/widget/Editor$InsertionPointCursorController;)Landroid/widget/Editor$InsertionHandleView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionHandleView;->isPopshowing()Z

    move-result v0

    .line 1953
    :goto_0
    iget-boolean v4, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v2

    .line 1954
    :goto_1
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1955
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1956
    .local v3, "text":Ljava/lang/CharSequence;
    if-nez v2, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1958
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 1959
    .local v1, "offset":I
    check-cast v3, Landroid/text/Spannable;

    .end local v3    # "text":Ljava/lang/CharSequence;
    invoke-static {v3, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1960
    iget-object v4, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v4, :cond_0

    .line 1963
    iget-object v4, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v4}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 1965
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1966
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1967
    new-instance v4, Landroid/widget/Editor$2;

    invoke-direct {v4, p0}, Landroid/widget/Editor$2;-><init>(Landroid/widget/Editor;)V

    iput-object v4, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 1973
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 1974
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    .line 1973
    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1981
    .end local v1    # "offset":I
    :cond_1
    :goto_2
    iput-boolean v8, p0, Landroid/widget/Editor;->mFirstTouchUp:Z

    .line 1950
    return-void

    .line 1951
    :cond_2
    const/4 v0, 0x0

    .local v0, "isShowing":Z
    goto :goto_0

    .line 1953
    .end local v0    # "isShowing":Z
    :cond_3
    const/4 v2, 0x0

    .local v2, "selectAllGotFocus":Z
    goto :goto_1

    .line 1975
    .end local v2    # "selectAllGotFocus":Z
    .restart local v1    # "offset":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/widget/Editor;->mFirstTouchUp:Z

    if-nez v4, :cond_1

    .line 1976
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_2
.end method

.method onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1195
    if-eqz p1, :cond_1

    .line 1196
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 1198
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1194
    :cond_0
    :goto_0
    return-void

    .line 1201
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_2

    .line 1202
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 1204
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_3

    .line 1205
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 1208
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1209
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 1210
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_4

    .line 1211
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    .line 1215
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    goto :goto_0
.end method

.method public performLongClick(Z)Z
    .locals 9
    .param p1, "handled"    # Z

    .prologue
    .line 1012
    if-nez p1, :cond_0

    iget v6, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v7, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-direct {p0, v6, v7}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1022
    .end local p1    # "handled":Z
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->hasSelection()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1023
    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1025
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 1026
    .local v5, "start":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1027
    .local v1, "end":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1028
    .local v4, "selectedText":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    invoke-static {v6, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1029
    .local v0, "data":Landroid/content/ClipData;
    new-instance v2, Landroid/widget/Editor$DragLocalState;

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v2, v6, v5, v1}, Landroid/widget/Editor$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    .line 1030
    .local v2, "localState":Landroid/widget/Editor$DragLocalState;
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/widget/Editor;->getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v2, v8}, Landroid/widget/TextView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 1031
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 1037
    .end local v0    # "data":Landroid/content/ClipData;
    .end local v1    # "end":I
    .end local v2    # "localState":Landroid/widget/Editor$DragLocalState;
    .end local v4    # "selectedText":Ljava/lang/CharSequence;
    .end local v5    # "start":I
    :goto_1
    const/4 p1, 0x1

    .line 1041
    :cond_1
    if-nez p1, :cond_2

    .line 1042
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result p1

    .line 1045
    :cond_2
    return p1

    .line 1013
    .restart local p1    # "handled":Z
    :cond_3
    iget-boolean v6, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    .line 1012
    if-eqz v6, :cond_0

    .line 1014
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v7, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 1015
    iget v8, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 1014
    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v3

    .line 1016
    .local v3, "offset":I
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 1017
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1018
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Editor$InsertionPointCursorController;->showWithActionPopup()V

    .line 1019
    const/4 p1, 0x1

    .local p1, "handled":Z
    goto :goto_0

    .line 1033
    .end local v3    # "offset":I
    .end local p1    # "handled":Z
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 1034
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    .line 1035
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    goto :goto_1
.end method

.method prepareCursorControllers()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 583
    const/4 v3, 0x0

    .line 585
    .local v3, "windowSupportsHandles":Z
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 586
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 587
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 588
    .local v2, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-lt v4, v6, :cond_4

    .line 589
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-le v4, v6, :cond_5

    const/4 v3, 0x1

    .line 592
    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    if-eqz v3, :cond_6

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v0, 0x1

    .line 593
    .local v0, "enabled":Z
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v4

    :goto_2
    iput-boolean v4, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    .line 594
    if-eqz v0, :cond_1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v5

    :cond_1
    iput-boolean v5, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    .line 596
    iget-boolean v4, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v4, :cond_2

    .line 597
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 598
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v4, :cond_2

    .line 599
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 600
    iput-object v7, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 604
    :cond_2
    iget-boolean v4, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v4, :cond_3

    .line 605
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 606
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v4, :cond_3

    .line 607
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v4}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 608
    iput-object v7, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 582
    :cond_3
    return-void

    .line 588
    .end local v0    # "enabled":Z
    .restart local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 589
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    move v0, v5

    .line 592
    goto :goto_1

    .restart local v0    # "enabled":Z
    :cond_7
    move v4, v5

    .line 593
    goto :goto_2
.end method

.method redo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 335
    iget-boolean v1, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v1, :cond_0

    .line 336
    return-void

    .line 338
    :cond_0
    new-array v0, v3, [Landroid/content/UndoOwner;

    iget-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 339
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->redo([Landroid/content/UndoOwner;I)I

    .line 334
    return-void
.end method

.method refreshTextActionMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1733
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1734
    iput-boolean v4, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 1735
    return-void

    .line 1737
    :cond_0
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    .line 1738
    .local v0, "hasSelection":Z
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 1739
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    .line 1740
    .local v1, "insertionController":Landroid/widget/Editor$InsertionPointCursorController;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isCursorBeingModified()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1741
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->isCursorBeingModified()Z

    move-result v3

    .line 1740
    if-eqz v3, :cond_3

    .line 1743
    :cond_2
    iput-boolean v4, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 1744
    return-void

    .line 1746
    :cond_3
    if-eqz v0, :cond_7

    .line 1747
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 1748
    iget-object v3, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v3, :cond_5

    .line 1749
    iget-boolean v3, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    if-eqz v3, :cond_4

    .line 1752
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 1770
    :cond_4
    :goto_0
    iput-boolean v4, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 1732
    return-void

    .line 1754
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1759
    iget-object v3, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_0

    .line 1756
    :cond_6
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 1757
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_0

    .line 1764
    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->isActive()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1766
    iget-object v3, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_4

    .line 1767
    iget-object v3, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_0

    .line 1765
    :cond_8
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    goto :goto_0
.end method

.method replace()V
    .locals 3

    .prologue
    .line 343
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 344
    .local v0, "middle":I
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 345
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 346
    invoke-virtual {p0}, Landroid/widget/Editor;->showSuggestions()V

    .line 342
    return-void
.end method

.method reportExtractedText()Z
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 1393
    iget-object v8, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1394
    .local v8, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v8, :cond_3

    .line 1395
    iget-boolean v6, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1396
    .local v6, "contentChanged":Z
    if-nez v6, :cond_0

    iget-boolean v0, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_3

    .line 1397
    :cond_0
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1398
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 1399
    iget-object v1, v8, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 1400
    .local v1, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    if-eqz v1, :cond_3

    .line 1401
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 1402
    .local v7, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_3

    .line 1407
    iget v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v0, :cond_1

    if-eqz v6, :cond_2

    .line 1410
    :cond_1
    :goto_0
    iget v2, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v3, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1411
    iget v4, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-object v5, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    move-object v0, p0

    .line 1410
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1418
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v2, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v3, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v7, v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 1419
    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1420
    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1421
    iput v9, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 1422
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1423
    const/4 v0, 0x1

    return v0

    .line 1408
    :cond_2
    const/4 v0, -0x2

    iput v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    goto :goto_0

    .line 1429
    .end local v1    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6    # "contentChanged":Z
    .end local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    return v9
.end method

.method restoreInstanceState(Landroid/os/ParcelableParcel;)V
    .locals 3
    .param p1, "state"    # Landroid/os/ParcelableParcel;

    .prologue
    .line 300
    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 301
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->restoreInstanceState(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 302
    iget-object v1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v1, v0}, Landroid/widget/Editor$UndoInputFilter;->restoreInstanceState(Landroid/os/Parcel;)V

    .line 304
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const-string/jumbo v2, "Editor"

    invoke-virtual {v1, v2, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 299
    return-void
.end method

.method saveInstanceState()Landroid/os/ParcelableParcel;
    .locals 3

    .prologue
    .line 292
    new-instance v1, Landroid/os/ParcelableParcel;

    invoke-virtual {p0}, Landroid/widget/Editor;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelableParcel;-><init>(Ljava/lang/ClassLoader;)V

    .line 293
    .local v1, "state":Landroid/os/ParcelableParcel;
    invoke-virtual {v1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 294
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v0}, Landroid/content/UndoManager;->saveInstanceState(Landroid/os/Parcel;)V

    .line 295
    iget-object v2, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v2, v0}, Landroid/widget/Editor$UndoInputFilter;->saveInstanceState(Landroid/os/Parcel;)V

    .line 296
    return-object v1
.end method

.method sendOnTextChanged(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "after"    # I

    .prologue
    .line 1170
    add-int v0, p1, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 1175
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 1169
    return-void
.end method

.method setContextMenuAnchor(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2279
    iput p1, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    .line 2280
    iput p2, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    .line 2278
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 454
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    .line 457
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 458
    invoke-direct {p0, v1}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 459
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 464
    :cond_0
    iput-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 453
    :cond_1
    :goto_0
    return-void

    .line 468
    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 469
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    goto :goto_0
.end method

.method setFrame()V
    .locals 7

    .prologue
    .line 729
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 731
    .local v6, "tv":Landroid/widget/TextView;
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 732
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v3

    .line 733
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/Editor$ErrorPopup;->getHeight()I

    move-result v5

    .line 732
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Editor$ErrorPopup;->update(Landroid/view/View;IIII)V

    .line 728
    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method showSuggestions()V
    .locals 1

    .prologue
    .line 2094
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-nez v0, :cond_0

    .line 2095
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 2097
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 2098
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    .line 2093
    return-void
.end method

.method startInsertionActionMode()V
    .locals 0

    .prologue
    .line 1776
    return-void
.end method

.method startSelectionActionMode()Z
    .locals 2

    .prologue
    .line 1788
    invoke-direct {p0}, Landroid/widget/Editor;->startSelectionActionModeInternal()Z

    move-result v0

    .line 1789
    .local v0, "selectionStarted":Z
    if-eqz v0, :cond_1

    .line 1790
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 1794
    :cond_0
    :goto_0
    return v0

    .line 1791
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1792
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_0
.end method

.method protected stopSelectionActionMode()V
    .locals 2

    .prologue
    .line 2006
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    .line 2007
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 2011
    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor;->mCustomSelectionActionModeCallbackDestroyed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_1

    .line 2012
    iget-object v0, p0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    sget-object v1, Landroid/widget/Editor;->mMockActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 2013
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mCustomSelectionActionModeCallbackDestroyed:Z

    .line 2005
    :cond_1
    return-void
.end method

.method protected stopTextActionMode()V
    .locals 1

    .prologue
    .line 1985
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1987
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1990
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 1984
    return-void
.end method

.method undo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 327
    iget-boolean v1, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v1, :cond_0

    .line 328
    return-void

    .line 330
    :cond_0
    new-array v0, v3, [Landroid/content/UndoOwner;

    iget-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 331
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->undo([Landroid/content/UndoOwner;I)I

    .line 326
    return-void
.end method

.method updateCursorsPositions()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v10, 0x0

    .line 1693
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v7, v7, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v7, :cond_0

    .line 1694
    iput v10, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 1695
    return-void

    .line 1698
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getActiveLayout()Landroid/text/Layout;

    move-result-object v2

    .line 1699
    .local v2, "layout":Landroid/text/Layout;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 1700
    .local v5, "offset":I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1701
    .local v3, "line":I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1702
    .local v6, "top":I
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 1704
    .local v0, "bottom":I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    :goto_0
    iput v7, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 1706
    move v4, v0

    .line 1707
    .local v4, "middle":I
    iget v7, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ne v7, v8, :cond_1

    .line 1709
    add-int v7, v6, v0

    shr-int/lit8 v4, v7, 0x1

    .line 1712
    :cond_1
    invoke-virtual {v2, v3}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v1

    .line 1713
    .local v1, "clamped":Z
    invoke-virtual {v2, v5, v1}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v7

    invoke-direct {p0, v10, v6, v4, v7}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    .line 1715
    iget v7, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ne v7, v8, :cond_2

    .line 1717
    invoke-virtual {v2, v5, v1}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v7

    .line 1716
    invoke-direct {p0, v9, v4, v0, v7}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    .line 1692
    :cond_2
    return-void

    .end local v1    # "clamped":Z
    .end local v4    # "middle":I
    :cond_3
    move v7, v9

    .line 1704
    goto :goto_0
.end method
