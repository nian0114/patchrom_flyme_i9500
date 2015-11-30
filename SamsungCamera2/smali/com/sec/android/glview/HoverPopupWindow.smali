.class public Lcom/sec/android/glview/HoverPopupWindow;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/HoverPopupWindow$Gravity;,
        Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;
    }
.end annotation


# static fields
.field private static final BOTTOM_ITEM_HOVER_POPUP_OFFSET_Y:I = 0x0

.field static final DEBUG:Z = false

.field private static final HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final ITEM_HOVER_POPUP_OFFSET_X:I = 0x0

.field private static final ITEM_HOVER_POPUP_OFFSET_Y:I = 0x0

.field private static final POPUP_TIMEOUT_MS:I = 0x2710

.field static final TAG:Ljava/lang/String; = "HoverPopupWindow"

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2

.field private static final UI_THREAD_BUSY_TIME_MS:I = 0x7d0


# instance fields
.field private final ID_TOOLTIP_VIEW:I

.field protected final mAnchorGLView:Lcom/sec/android/glview/TwGLView;

.field private mAnchorRect:Landroid/graphics/Rect;

.field protected mAnchorView:Landroid/view/View;

.field protected mAnimationStyle:I

.field private mContentHeight:I

.field protected mContentLP:Landroid/view/ViewGroup$LayoutParams;

.field protected mContentResId:I

.field protected mContentText:Ljava/lang/CharSequence;

.field protected mContentView:Landroid/view/View;

.field private mContentWidth:I

.field protected final mContext:Landroid/content/Context;

.field private mDismissPopupRunnable:Ljava/lang/Runnable;

.field private mDisplayFrame:Landroid/graphics/Rect;

.field protected mEnabled:Z

.field protected mGuideLineColor:I

.field protected mGuideLineFadeOffset:I

.field protected mGuideRingDrawableId:I

.field private mHashCodeForViewState:I

.field protected mHoverDetectTimeMS:I

.field private mHoverPaddingBottom:I

.field private mHoverPaddingLeft:I

.field private mHoverPaddingRight:I

.field private mHoverPaddingTop:I

.field private mHoverView:Landroid/view/ViewGroup;

.field protected mHoveringPointX:I

.field protected mHoveringPointY:I

.field protected mIsGuideLineEnabled:Z

.field private mIsHoverPaddingEnabled:Z

.field private mIsPopupTouchable:Z

.field private mIsSPenPointChanged:Z

.field protected mIsShowMessageSent:Z

.field private mIsTryingShowPopup:Z

.field protected mListener:Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;

.field private mNeedToMeasureContentView:Z

.field private mOrientation:I

.field protected final mParentView:Landroid/view/View;

.field protected mPopup:Landroid/widget/PopupWindow;

.field protected mPopupBottomOffsetY:I

.field protected mPopupGravity:I

.field private mPopupHeight:I

.field protected mPopupOffsetX:I

.field protected mPopupOffsetY:I

.field protected mPopupPosX:I

.field protected mPopupPosY:I

.field protected mPopupType:I

.field private mPopupWidth:I

.field protected mShowPopupAlways:Z

.field private mShowPopupRunnable:Ljava/lang/Runnable;

.field protected mWindowGapX:I

.field protected mWindowGapY:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/glview/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 3
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const v0, 0x7010001

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->ID_TOOLTIP_VIEW:I

    .line 75
    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    .line 121
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 123
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 125
    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentWidth:I

    .line 127
    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentHeight:I

    .line 129
    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 131
    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsShowMessageSent:Z

    .line 133
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 135
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 144
    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 158
    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    .line 163
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    .line 189
    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    .line 190
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    .line 192
    iput p2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->initInstance()V

    .line 195
    invoke-virtual {p0, p2}, Lcom/sec/android/glview/HoverPopupWindow;->setInstanceByType(I)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/sec/android/glview/TwGLView;I)V
    .locals 3
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "anchorGLView"    # Lcom/sec/android/glview/TwGLView;
    .param p3, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const v0, 0x7010001

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->ID_TOOLTIP_VIEW:I

    .line 75
    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    .line 121
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 123
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 125
    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentWidth:I

    .line 127
    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentHeight:I

    .line 129
    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 131
    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsShowMessageSent:Z

    .line 133
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 135
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 144
    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 158
    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    .line 163
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    .line 206
    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    .line 207
    iput-object p2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    .line 209
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    .line 214
    iput p3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->initInstance()V

    .line 217
    invoke-virtual {p0, p3}, Lcom/sec/android/glview/HoverPopupWindow;->setInstanceByType(I)V

    .line 218
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/glview/HoverPopupWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/glview/HoverPopupWindow;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/glview/HoverPopupWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/glview/HoverPopupWindow;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->showPopup()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/glview/HoverPopupWindow;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/HoverPopupWindow;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 21
    .param p1, "anchorRect"    # Landroid/graphics/Rect;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "contentWidth"    # I
    .param p4, "contentHeight"    # I

    .prologue
    .line 886
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 887
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 888
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mContentWidth:I

    .line 889
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mContentHeight:I

    .line 891
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v12

    .line 892
    .local v12, "posX":I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v13

    .line 898
    .local v13, "posY":I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v5, v0, 0xf0f

    .line 899
    .local v5, "hGravity":I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v18

    const v19, 0xf0f0

    and-int v17, v18, v19

    .line 901
    .local v17, "vGravity":I
    const/4 v4, 0x0

    .line 906
    .local v4, "contentPosX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0xb4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 907
    :cond_0
    move/from16 v15, p3

    .line 908
    .local v15, "rotatedContentWidth":I
    move/from16 v14, p4

    .line 915
    .local v14, "rotatedContentHeight":I
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v18

    if-nez v18, :cond_2

    .line 917
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v12

    .line 918
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v13

    .line 1096
    :goto_1
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosX:I

    .line 1097
    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosY:I

    .line 1098
    return-void

    .line 910
    .end local v14    # "rotatedContentHeight":I
    .end local v15    # "rotatedContentWidth":I
    :cond_1
    move/from16 v15, p4

    .line 911
    .restart local v15    # "rotatedContentWidth":I
    move/from16 v14, p3

    .line 912
    .restart local v14    # "rotatedContentHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v18, v0

    sub-int v18, v18, v15

    div-int/lit8 v4, v18, 0x2

    goto :goto_0

    .line 927
    :cond_2
    move v11, v15

    .line 928
    .local v11, "popupWidth":I
    move v7, v14

    .line 931
    .local v7, "popupHeight":I
    sparse-switch v5, :sswitch_data_0

    .line 1021
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v12

    .line 1022
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v13

    .line 1030
    :goto_2
    sparse-switch v17, :sswitch_data_1

    .line 1090
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v12

    .line 1091
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v13

    goto :goto_1

    .line 933
    :sswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0x5a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0x10e

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 934
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v12

    .line 935
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v13

    .line 936
    goto :goto_2

    .line 939
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 941
    .local v2, "basePos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 942
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v19

    add-int v18, v18, v19

    sub-int v12, v2, v18

    goto :goto_2

    .line 944
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 945
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v18

    add-int v12, v2, v18

    .line 947
    goto/16 :goto_2

    .line 950
    .end local v2    # "basePos":I
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0xb4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 951
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    sub-int v8, v18, v19

    .line 952
    .local v8, "popupLeft":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    add-int v9, v18, v19

    .line 953
    .local v9, "popupRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 955
    .restart local v2    # "basePos":I
    if-le v9, v2, :cond_7

    .line 956
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v18, v0

    sub-int v12, v2, v18

    goto/16 :goto_2

    .line 958
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 959
    if-ge v8, v2, :cond_8

    .line 960
    move v12, v2

    goto/16 :goto_2

    .line 962
    :cond_8
    move v12, v8

    goto/16 :goto_2

    .line 965
    .end local v2    # "basePos":I
    .end local v8    # "popupLeft":I
    .end local v9    # "popupRight":I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    add-int v8, v18, v19

    .line 966
    .restart local v8    # "popupLeft":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    sub-int v9, v18, v19

    .line 967
    .restart local v9    # "popupRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 968
    .restart local v2    # "basePos":I
    if-le v8, v2, :cond_a

    .line 969
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v18, v0

    sub-int v13, v2, v18

    goto/16 :goto_2

    .line 971
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 972
    if-ge v9, v2, :cond_b

    .line 973
    move v13, v2

    goto/16 :goto_2

    .line 975
    :cond_b
    move v13, v9

    .line 978
    goto/16 :goto_2

    .line 981
    .end local v2    # "basePos":I
    .end local v8    # "popupLeft":I
    .end local v9    # "popupRight":I
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0xb4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 982
    :cond_c
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 983
    .restart local v8    # "popupLeft":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    add-int v9, v18, v19

    .line 984
    .restart local v9    # "popupRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 985
    .restart local v2    # "basePos":I
    if-le v9, v2, :cond_d

    .line 986
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v18, v0

    sub-int v12, v2, v18

    goto/16 :goto_2

    .line 988
    :cond_d
    move v12, v8

    goto/16 :goto_2

    .line 990
    .end local v2    # "basePos":I
    .end local v8    # "popupLeft":I
    .end local v9    # "popupRight":I
    :cond_e
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 991
    .restart local v8    # "popupLeft":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    sub-int v9, v18, v19

    .line 992
    .restart local v9    # "popupRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 993
    .restart local v2    # "basePos":I
    if-ge v9, v2, :cond_f

    .line 994
    move v13, v2

    goto/16 :goto_2

    .line 996
    :cond_f
    move v13, v9

    .line 998
    goto/16 :goto_2

    .line 1001
    .end local v2    # "basePos":I
    .end local v8    # "popupLeft":I
    .end local v9    # "popupRight":I
    :sswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0xb4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 1002
    :cond_10
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    sub-int v8, v18, v19

    .line 1003
    .restart local v8    # "popupLeft":I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .line 1004
    .restart local v9    # "popupRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 1005
    .restart local v2    # "basePos":I
    if-ge v8, v2, :cond_11

    .line 1006
    move v12, v2

    goto/16 :goto_2

    .line 1008
    :cond_11
    move v12, v8

    goto/16 :goto_2

    .line 1010
    .end local v2    # "basePos":I
    .end local v8    # "popupLeft":I
    .end local v9    # "popupRight":I
    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    add-int v8, v18, v19

    .line 1011
    .restart local v8    # "popupLeft":I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 1012
    .restart local v9    # "popupRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1013
    .restart local v2    # "basePos":I
    if-le v8, v2, :cond_13

    .line 1014
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v18, v0

    sub-int v13, v2, v18

    goto/16 :goto_2

    .line 1016
    :cond_13
    move v13, v9

    .line 1018
    goto/16 :goto_2

    .line 1032
    .end local v2    # "basePos":I
    .end local v8    # "popupLeft":I
    .end local v9    # "popupRight":I
    :sswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0xb4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_17

    .line 1033
    :cond_14
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 1034
    .local v10, "popupTop":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v6, v18, v7

    .line 1035
    .local v6, "popupBottom":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v16, v18, v7

    .line 1036
    .local v16, "topAbove":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1037
    .local v3, "bottomUnder":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1038
    .restart local v2    # "basePos":I
    if-le v6, v2, :cond_16

    .line 1039
    const/16 v18, 0x301

    move/from16 v0, v18

    if-ne v5, v0, :cond_15

    .line 1040
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupBottomOffsetY()I

    move-result v18

    add-int v13, v16, v18

    goto/16 :goto_1

    .line 1042
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v18

    add-int v13, v16, v18

    goto/16 :goto_1

    .line 1044
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v18

    add-int v13, v3, v18

    goto/16 :goto_1

    .line 1047
    .end local v2    # "basePos":I
    .end local v3    # "bottomUnder":I
    .end local v6    # "popupBottom":I
    .end local v10    # "popupTop":I
    .end local v16    # "topAbove":I
    :cond_17
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v10, v18, v4

    .line 1048
    .restart local v10    # "popupTop":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v6, v18, v11

    .line 1049
    .restart local v6    # "popupBottom":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v19, v11, v4

    sub-int v16, v18, v19

    .line 1050
    .restart local v16    # "topAbove":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v3, v18, v4

    .line 1051
    .restart local v3    # "bottomUnder":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 1052
    .restart local v2    # "basePos":I
    if-le v6, v2, :cond_18

    .line 1053
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v18

    add-int v12, v16, v18

    goto/16 :goto_1

    .line 1055
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v18

    add-int v12, v3, v18

    .line 1058
    goto/16 :goto_1

    .line 1061
    .end local v2    # "basePos":I
    .end local v3    # "bottomUnder":I
    .end local v6    # "popupBottom":I
    .end local v10    # "popupTop":I
    .end local v16    # "topAbove":I
    :sswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    if-eqz v18, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0xb4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1c

    .line 1062
    :cond_19
    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 1063
    .restart local v6    # "popupBottom":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v10, v18, v7

    .line 1064
    .restart local v10    # "popupTop":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v16, v18, v7

    .line 1065
    .restart local v16    # "topAbove":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1066
    .restart local v3    # "bottomUnder":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 1067
    .restart local v2    # "basePos":I
    if-ge v10, v2, :cond_1b

    .line 1068
    const/16 v18, 0x301

    move/from16 v0, v18

    if-ne v5, v0, :cond_1a

    .line 1069
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupBottomOffsetY()I

    move-result v18

    sub-int v13, v3, v18

    goto/16 :goto_1

    .line 1071
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v18

    sub-int v13, v3, v18

    goto/16 :goto_1

    .line 1073
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v18

    sub-int v13, v16, v18

    goto/16 :goto_1

    .line 1076
    .end local v2    # "basePos":I
    .end local v3    # "bottomUnder":I
    .end local v6    # "popupBottom":I
    .end local v10    # "popupTop":I
    .end local v16    # "topAbove":I
    :cond_1c
    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 1077
    .restart local v6    # "popupBottom":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v10, v18, v11

    .line 1078
    .restart local v10    # "popupTop":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v19, v11, v4

    sub-int v16, v18, v19

    .line 1079
    .restart local v16    # "topAbove":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v3, v18, v4

    .line 1080
    .restart local v3    # "bottomUnder":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 1081
    .restart local v2    # "basePos":I
    if-ge v10, v2, :cond_1d

    .line 1082
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v18

    sub-int v12, v3, v18

    goto/16 :goto_1

    .line 1084
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v18

    sub-int v12, v16, v18

    .line 1087
    goto/16 :goto_1

    .line 931
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x301 -> :sswitch_0
    .end sparse-switch

    .line 1030
    :sswitch_data_1
    .sparse-switch
        0x3030 -> :sswitch_5
        0x5050 -> :sswitch_4
    .end sparse-switch
.end method

.method private dismissPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1273
    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1277
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1278
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 1279
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 1280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsShowMessageSent:Z

    .line 1282
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 1285
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1286
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1288
    :cond_2
    return-void
.end method

.method private getPopupBottomOffsetY()I
    .locals 2

    .prologue
    .line 1387
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v0

    and-int/lit16 v0, v0, 0xf0f

    const/16 v1, 0x301

    if-ne v0, v1, :cond_0

    .line 1388
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupBottomOffsetY:I

    add-int/lit8 v0, v0, 0x0

    .line 1389
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupBottomOffsetY:I

    goto :goto_0
.end method

.method private getPopupGravity()I
    .locals 8

    .prologue
    const/16 v7, 0x301

    const/16 v6, 0xb4

    const/16 v5, 0x5a

    .line 1393
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupGravity:I

    if-nez v3, :cond_0

    .line 1394
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupGravity:I

    .line 1442
    :goto_0
    return v3

    .line 1396
    :cond_0
    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupGravity:I

    .line 1397
    .local v1, "rotatedPopupGravity":I
    and-int/lit16 v0, v1, 0xf0f

    .line 1398
    .local v0, "hGravity":I
    const v3, 0xf0f0

    and-int v2, v1, v3

    .line 1401
    .local v2, "vGravity":I
    sparse-switch v0, :sswitch_data_0

    .line 1423
    :cond_1
    :goto_1
    sparse-switch v2, :sswitch_data_1

    .line 1442
    :cond_2
    :goto_2
    or-int v3, v0, v2

    goto :goto_0

    .line 1404
    :sswitch_0
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-eq v3, v5, :cond_3

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-ne v3, v6, :cond_1

    .line 1405
    :cond_3
    const/4 v0, 0x5

    goto :goto_1

    .line 1409
    :sswitch_1
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-eq v3, v5, :cond_4

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-ne v3, v6, :cond_1

    .line 1410
    :cond_4
    const/4 v0, 0x3

    goto :goto_1

    .line 1414
    :sswitch_2
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-eq v3, v5, :cond_5

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_1

    .line 1415
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 1425
    :sswitch_3
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-ne v3, v5, :cond_6

    if-eq v0, v7, :cond_6

    .line 1426
    const/16 v2, 0x5050

    goto :goto_2

    .line 1427
    :cond_6
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-ne v3, v6, :cond_2

    .line 1428
    const/16 v2, 0x5050

    goto :goto_2

    .line 1432
    :sswitch_4
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-ne v3, v5, :cond_7

    if-eq v0, v7, :cond_7

    .line 1433
    const/16 v2, 0x3030

    goto :goto_2

    .line 1434
    :cond_7
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-ne v3, v6, :cond_2

    .line 1435
    const/16 v2, 0x3030

    goto :goto_2

    .line 1401
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x301 -> :sswitch_2
    .end sparse-switch

    .line 1423
    :sswitch_data_1
    .sparse-switch
        0x3030 -> :sswitch_3
        0x5050 -> :sswitch_4
    .end sparse-switch
.end method

.method private getPopupOffsetX()I
    .locals 2

    .prologue
    .line 1375
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v0

    and-int/lit16 v0, v0, 0xf0f

    const/16 v1, 0x301

    if-ne v0, v1, :cond_0

    .line 1376
    const/4 v0, 0x0

    .line 1377
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetX:I

    goto :goto_0
.end method

.method private getPopupOffsetY()I
    .locals 2

    .prologue
    .line 1381
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v0

    and-int/lit16 v0, v0, 0xf0f

    const/16 v1, 0x301

    if-ne v0, v1, :cond_0

    .line 1382
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetY:I

    add-int/lit8 v0, v0, 0x0

    .line 1383
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetY:I

    goto :goto_0
.end method

.method private getStateHashCode()I
    .locals 4

    .prologue
    .line 1333
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    .line 1334
    .local v0, "hashCode":I
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1336
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 1343
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 1344
    .local v1, "location":[I
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1345
    const/4 v2, 0x0

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x14

    const/4 v3, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 1348
    .end local v1    # "location":[I
    :cond_0
    return v0
.end method

.method private getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 499
    :goto_0
    return-object v0

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 499
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeToolTipContentView()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const v4, 0x7010001

    .line 671
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 673
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 675
    iput-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v4, :cond_5

    .line 681
    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 683
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    if-nez v2, :cond_3

    .line 684
    const v2, 0x7f04000e

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    .line 686
    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    .line 687
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    const v3, 0x7f0e0022

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 689
    :cond_4
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 690
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setHoverPopupType(I)V

    .line 691
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 694
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_5
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 695
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private pointInValidHoverArea(FF)Z
    .locals 2
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    .line 1316
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingTop:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingBottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPopupContent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 624
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    packed-switch v3, :pswitch_data_0

    .line 648
    iput-object v5, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 653
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mListener:Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;

    if-eqz v3, :cond_1

    .line 654
    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mListener:Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;

    iget-object v4, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v3, v4, p0}, Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;->onSetContentView(Landroid/view/View;Lcom/sec/android/glview/HoverPopupWindow;)Z

    .line 657
    :cond_1
    return-void

    .line 626
    :pswitch_0
    iput-object v5, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 629
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->makeToolTipContentView()V

    goto :goto_0

    .line 632
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->makeDefaultContentView()V

    goto :goto_0

    .line 635
    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 636
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentResId:I

    if-eqz v3, :cond_0

    .line 637
    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 639
    .local v1, "inflater":Landroid/view/LayoutInflater;
    :try_start_0
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentResId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 640
    .local v2, "v":Landroid/view/View;
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    .end local v2    # "v":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 642
    .local v0, "ie":Landroid/view/InflateException;
    iput-object v5, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 624
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPopup()V
    .locals 2

    .prologue
    .line 572
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHashCodeForViewState:I

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getStateHashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    .line 591
    :goto_0
    return-void

    .line 578
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 581
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 585
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    .line 586
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->setPopupContent()V

    .line 587
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->updateHoverPopup()V

    goto :goto_0
.end method


# virtual methods
.method protected computePopupPosition(Landroid/view/View;III)V
    .locals 26
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offX"    # I
    .param p4, "offY"    # I

    .prologue
    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 878
    :goto_0
    return-void

    .line 713
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 715
    if-eqz p1, :cond_7

    move-object/from16 v8, p1

    .line 716
    .local v8, "anchorView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    .line 719
    .local v13, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v7, 0x0

    .line 720
    .local v7, "anchorRect":Landroid/graphics/Rect;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v6, v0, [I

    .line 721
    .local v6, "anchorLocOnScr":[I
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v5, v0, [I

    .line 722
    .local v5, "anchorLocInWindow":[I
    invoke-virtual {v8, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 723
    invoke-virtual {v8, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 724
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 725
    .local v9, "anchorWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 727
    .local v4, "anchorHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v16

    .line 729
    .local v16, "rect":Landroid/graphics/Rect;
    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    aput v23, v6, v22

    .line 730
    const/16 v22, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    aput v23, v6, v22

    .line 731
    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    aput v23, v5, v22

    .line 732
    const/16 v22, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    aput v23, v5, v22

    .line 734
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v22, v0

    const/16 v23, 0xb4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 735
    :cond_1
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v9, v22, v23

    .line 736
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v4, v22, v23

    .line 744
    .end local v16    # "rect":Landroid/graphics/Rect;
    :cond_2
    :goto_2
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 745
    .local v12, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v8, v12}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 753
    invoke-virtual {v8}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v22

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 755
    const/16 v22, 0x0

    aget v22, v6, v22

    const/16 v23, 0x0

    aget v23, v5, v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapX:I

    .line 756
    const/16 v22, 0x1

    aget v22, v6, v22

    const/16 v23, 0x1

    aget v23, v5, v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapY:I

    .line 758
    new-instance v7, Landroid/graphics/Rect;

    .end local v7    # "anchorRect":Landroid/graphics/Rect;
    const/16 v22, 0x0

    aget v22, v5, v22

    const/16 v23, 0x1

    aget v23, v5, v23

    const/16 v24, 0x0

    aget v24, v5, v24

    add-int v24, v24, v9

    const/16 v25, 0x1

    aget v25, v5, v25

    add-int v25, v25, v4

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 779
    .restart local v7    # "anchorRect":Landroid/graphics/Rect;
    :goto_3
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    if-gez v22, :cond_4

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    if-gez v22, :cond_4

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v17

    .line 781
    .local v17, "root":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .line 783
    .local v19, "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v21, v19

    .line 784
    check-cast v21, Landroid/view/WindowManager$LayoutParams;

    .line 785
    .local v21, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v23, v0

    or-int v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x404

    move/from16 v22, v0

    if-nez v22, :cond_a

    const/4 v15, 0x1

    .line 788
    .local v15, "isSystemUiVisible":Z
    :goto_4
    const/16 v18, 0x0

    .line 790
    .local v18, "statusBarHeight":I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    if-eqz v15, :cond_3

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x1050010

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 794
    :cond_3
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 795
    move/from16 v0, v18

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 796
    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 797
    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    .line 803
    .end local v15    # "isSystemUiVisible":Z
    .end local v17    # "root":Landroid/view/View;
    .end local v18    # "statusBarHeight":I
    .end local v19    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v21    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .line 804
    .restart local v19    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v21, v19

    .line 805
    check-cast v21, Landroid/view/WindowManager$LayoutParams;

    .line 806
    .restart local v21    # "wlp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v21, :cond_5

    invoke-virtual/range {v21 .. v21}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0c02c4

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a03f1

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 808
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 809
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03f4

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a03f5

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    .line 812
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    .line 817
    .end local v21    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    const/16 v22, 0x0

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 818
    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 819
    const/16 v22, 0x0

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 820
    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapY:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v22, v0

    if-nez v22, :cond_b

    .line 829
    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    const/high16 v23, -0x80000000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 831
    .local v20, "widthMeasureSpec":I
    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    const/high16 v23, -0x80000000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 854
    .local v14, "heightMeasureSpec":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setRotation(F)V

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/view/View;->measure(II)V

    .line 857
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 859
    .local v11, "contentWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 861
    .local v10, "contentHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v22, v0

    const/16 v23, 0xb4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 862
    :cond_6
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    .line 863
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupHeight:I

    .line 873
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupHeight:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 877
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v11, v10}, Lcom/sec/android/glview/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    goto/16 :goto_0

    .line 715
    .end local v4    # "anchorHeight":I
    .end local v5    # "anchorLocInWindow":[I
    .end local v6    # "anchorLocOnScr":[I
    .end local v7    # "anchorRect":Landroid/graphics/Rect;
    .end local v8    # "anchorView":Landroid/view/View;
    .end local v9    # "anchorWidth":I
    .end local v10    # "contentHeight":I
    .end local v11    # "contentWidth":I
    .end local v12    # "displayFrame":Landroid/graphics/Rect;
    .end local v13    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v14    # "heightMeasureSpec":I
    .end local v19    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v20    # "widthMeasureSpec":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    .line 738
    .restart local v4    # "anchorHeight":I
    .restart local v5    # "anchorLocInWindow":[I
    .restart local v6    # "anchorLocOnScr":[I
    .restart local v7    # "anchorRect":Landroid/graphics/Rect;
    .restart local v8    # "anchorView":Landroid/view/View;
    .restart local v9    # "anchorWidth":I
    .restart local v13    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v16    # "rect":Landroid/graphics/Rect;
    :cond_8
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v4, v22, v23

    .line 739
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v9, v22, v23

    goto/16 :goto_2

    .line 763
    .end local v16    # "rect":Landroid/graphics/Rect;
    .restart local v12    # "displayFrame":Landroid/graphics/Rect;
    :cond_9
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapX:I

    .line 764
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapY:I

    .line 766
    new-instance v7, Landroid/graphics/Rect;

    .end local v7    # "anchorRect":Landroid/graphics/Rect;
    const/16 v22, 0x0

    aget v22, v6, v22

    const/16 v23, 0x1

    aget v23, v6, v23

    const/16 v24, 0x0

    aget v24, v6, v24

    add-int v24, v24, v9

    const/16 v25, 0x1

    aget v25, v6, v25

    add-int v25, v25, v4

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 772
    .restart local v7    # "anchorRect":Landroid/graphics/Rect;
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 773
    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 774
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 775
    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 785
    .restart local v17    # "root":Landroid/view/View;
    .restart local v19    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v21    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 834
    .end local v17    # "root":Landroid/view/View;
    .end local v21    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    if-ltz v22, :cond_c

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 843
    .restart local v20    # "widthMeasureSpec":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    if-ltz v22, :cond_d

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .restart local v14    # "heightMeasureSpec":I
    goto/16 :goto_5

    .line 838
    .end local v14    # "heightMeasureSpec":I
    .end local v20    # "widthMeasureSpec":I
    :cond_c
    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    const/high16 v23, -0x80000000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .restart local v20    # "widthMeasureSpec":I
    goto :goto_7

    .line 847
    :cond_d
    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    const/high16 v23, -0x80000000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .restart local v14    # "heightMeasureSpec":I
    goto/16 :goto_5

    .line 865
    .restart local v10    # "contentHeight":I
    .restart local v11    # "contentWidth":I
    :cond_e
    if-le v10, v11, :cond_f

    .line 866
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    .line 867
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupHeight:I

    goto/16 :goto_6

    .line 869
    :cond_f
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    .line 870
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupHeight:I

    goto/16 :goto_6
.end method

.method protected convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 2
    .param p1, "dp"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 1326
    if-nez p2, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 1329
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected createPopupWindow()Landroid/widget/PopupWindow;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 600
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 602
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 603
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 604
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 605
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 606
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 607
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 1262
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 1264
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->dismissPopup()V

    .line 1265
    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mEnabled:Z

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method protected getPriorityContentText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 485
    :goto_0
    return-object v0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 485
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initInstance()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 224
    iput-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mEnabled:Z

    .line 226
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 228
    const/16 v1, 0x5053

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupGravity:I

    .line 229
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosX:I

    .line 230
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosY:I

    .line 231
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoveringPointX:I

    .line 232
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoveringPointY:I

    .line 233
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetX:I

    .line 234
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetY:I

    .line 235
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupBottomOffsetY:I

    .line 236
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapX:I

    .line 237
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapY:I

    .line 238
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingLeft:I

    .line 239
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingRight:I

    .line 240
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingTop:I

    .line 241
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingBottom:I

    .line 243
    iput-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mListener:Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;

    .line 244
    iput-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 245
    const v1, 0x10304e5

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnimationStyle:I

    .line 246
    iput-boolean v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 247
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mGuideLineFadeOffset:I

    .line 248
    iput-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 249
    iput-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 250
    iput-boolean v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsSPenPointChanged:Z

    .line 251
    iput-boolean v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsPopupTouchable:Z

    .line 252
    iput-boolean v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 253
    iput-boolean v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupAlways:Z

    .line 255
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 256
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x182

    const v2, 0x10803fd

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mGuideRingDrawableId:I

    .line 257
    const/16 v1, 0x181

    const v2, -0x866e57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mGuideLineColor:I

    .line 258
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 259
    return-void
.end method

.method public isHoverPopupPossible()Z
    .locals 3

    .prologue
    .line 279
    const/4 v0, 0x1

    .line 281
    .local v0, "ret":Z
    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    if-nez v1, :cond_1

    .line 282
    const/4 v0, 0x0

    .line 292
    :cond_0
    :goto_0
    return v0

    .line 283
    :cond_1
    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 284
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 287
    :cond_3
    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 288
    const/4 v0, 0x0

    goto :goto_0

    .line 289
    :cond_4
    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 290
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isHoveringSettingEnabled(I)Z
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 300
    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 302
    .local v0, "isHoveringOn":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 303
    if-ne p1, v1, :cond_2

    .line 304
    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_icon_label"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 312
    :cond_0
    :goto_1
    return v1

    .end local v0    # "isHoveringOn":Z
    :cond_1
    move v0, v2

    .line 300
    goto :goto_0

    .line 306
    .restart local v0    # "isHoveringOn":Z
    :cond_2
    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 307
    :cond_3
    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_information_preview"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    :cond_4
    move v1, v2

    .line 312
    goto :goto_1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 406
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeDefaultContentView()V
    .locals 0

    .prologue
    .line 664
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->makeToolTipContentView()V

    .line 665
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1181
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 1182
    .local v6, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 1184
    .local v7, "y":F
    const/16 v8, 0x9

    if-ne v0, v8, :cond_3

    .line 1186
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 1187
    .local v4, "timeDealy":J
    const-wide/16 v8, 0x7d0

    cmp-long v8, v4, v8

    if-lez v8, :cond_0

    .line 1189
    const/4 v8, 0x1

    .line 1243
    .end local v4    # "timeDealy":J
    :goto_0
    return v8

    .line 1193
    .restart local v4    # "timeDealy":J
    :cond_0
    iget-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v8, :cond_1

    .line 1194
    invoke-direct {p0, v6, v7}, Lcom/sec/android/glview/HoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v1

    .line 1196
    .local v1, "isPointInValidHoverArea":Z
    if-eqz v1, :cond_2

    .line 1197
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1243
    .end local v1    # "isPointInValidHoverArea":Z
    .end local v4    # "timeDealy":J
    :cond_1
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1199
    .restart local v1    # "isPointInValidHoverArea":Z
    .restart local v4    # "timeDealy":J
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    goto :goto_1

    .line 1202
    .end local v1    # "isPointInValidHoverArea":Z
    .end local v4    # "timeDealy":J
    :cond_3
    const/4 v8, 0x7

    if-ne v0, v8, :cond_6

    .line 1203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v2, v8

    .line 1204
    .local v2, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v3, v8

    .line 1205
    .local v3, "rawY":I
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/glview/HoverPopupWindow;->setHoveringPoint(II)V

    .line 1207
    iget-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v8, :cond_1

    .line 1208
    invoke-direct {p0, v6, v7}, Lcom/sec/android/glview/HoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v1

    .line 1210
    .restart local v1    # "isPointInValidHoverArea":Z
    if-eqz v1, :cond_5

    iget-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-nez v8, :cond_5

    .line 1214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 1215
    .restart local v4    # "timeDealy":J
    const-wide/16 v8, 0x7d0

    cmp-long v8, v4, v8

    if-lez v8, :cond_4

    .line 1217
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1218
    const/4 v8, 0x1

    goto :goto_0

    .line 1223
    :cond_4
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1225
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->show()V

    .line 1226
    const/4 v8, 0x1

    goto :goto_0

    .line 1227
    .end local v4    # "timeDealy":J
    :cond_5
    if-nez v1, :cond_1

    iget-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsPopupTouchable:Z

    if-nez v8, :cond_1

    .line 1231
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1232
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    .line 1233
    const/4 v8, 0x1

    goto :goto_0

    .line 1236
    .end local v1    # "isPointInValidHoverArea":Z
    .end local v2    # "rawX":I
    .end local v3    # "rawY":I
    :cond_6
    const/16 v8, 0xa

    if-ne v0, v8, :cond_1

    .line 1239
    iget-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1240
    const/4 v8, 0x1

    goto :goto_0
.end method

.method protected postDismiss(I)V
    .locals 4
    .param p1, "ms"    # I

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/glview/HoverPopupWindow$3;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/HoverPopupWindow$3;-><init>(Lcom/sec/android/glview/HoverPopupWindow;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1255
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 444
    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 445
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 2
    .param p1, "aniStyle"    # I

    .prologue
    .line 1169
    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnimationStyle:I

    .line 1170
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1173
    :cond_0
    return-void
.end method

.method public setContent(I)V
    .locals 1
    .param p1, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 351
    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentResId:I

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 353
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 361
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/HoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    return-void

    .line 361
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 373
    iput-object p2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 375
    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 386
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mEnabled:Z

    .line 318
    return-void
.end method

.method public setHoverDetectTime(I)V
    .locals 0
    .param p1, "ms"    # I

    .prologue
    .line 416
    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 417
    return-void
.end method

.method public setHoverPaddingArea(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 421
    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingLeft:I

    .line 422
    iput p3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingRight:I

    .line 423
    iput p2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingTop:I

    .line 424
    iput p4, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingBottom:I

    .line 426
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingLeft:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingRight:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingTop:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingBottom:I

    if-eqz v0, :cond_1

    .line 428
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 430
    :cond_1
    return-void
.end method

.method public setHoverPopupListener(Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mListener:Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;

    .line 342
    return-void
.end method

.method public setHoveringPoint(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 474
    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoveringPointX:I

    .line 475
    iput p2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoveringPointY:I

    .line 476
    return-void
.end method

.method protected setInstanceByType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 266
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 267
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 268
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupGravity:I

    .line 269
    const v0, 0x10304e5

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnimationStyle:I

    .line 271
    :cond_0
    return-void
.end method

.method public setPopupGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 453
    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupGravity:I

    .line 454
    return-void
.end method

.method public setPopupPosOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 463
    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetX:I

    .line 464
    iput p2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetY:I

    .line 465
    return-void
.end method

.method public setRotation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1363
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1366
    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    .line 1368
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1369
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    .line 1372
    :cond_0
    return-void
.end method

.method public setShowPopupAlways(Z)V
    .locals 0
    .param p1, "always"    # Z

    .prologue
    .line 433
    iput-boolean p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupAlways:Z

    .line 434
    return-void
.end method

.method public show()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 504
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/HoverPopupWindow;->show(I)V

    .line 505
    return-void
.end method

.method public show(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x1

    .line 518
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    if-eq p1, v0, :cond_0

    .line 519
    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    .line 520
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/HoverPopupWindow;->setInstanceByType(I)V

    .line 524
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mEnabled:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->isHoverPopupPossible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/glview/HoverPopupWindow;->isHoveringSettingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_3

    .line 564
    :cond_2
    :goto_0
    return-void

    .line 531
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getStateHashCode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHashCodeForViewState:I

    .line 534
    invoke-virtual {p0, v4}, Lcom/sec/android/glview/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 538
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    if-ne v0, v4, :cond_4

    .line 539
    new-instance v0, Lcom/sec/android/glview/HoverPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/HoverPopupWindow$1;-><init>(Lcom/sec/android/glview/HoverPopupWindow;)V

    iput-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 549
    :cond_4
    new-instance v0, Lcom/sec/android/glview/HoverPopupWindow$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/HoverPopupWindow$2;-><init>(Lcom/sec/android/glview/HoverPopupWindow;)V

    iput-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 559
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 560
    iput-boolean v4, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsShowMessageSent:Z

    goto :goto_0
.end method

.method protected showPenPointEffect(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1292
    if-ne p1, v2, :cond_1

    .line 1296
    const/16 v0, 0xa

    const/4 v1, -0x1

    :try_start_0
    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsSPenPointChanged:Z

    .line 1313
    :cond_0
    :goto_1
    return-void

    .line 1302
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsSPenPointChanged:Z

    if-ne v0, v2, :cond_0

    .line 1306
    const/4 v0, 0x1

    const/4 v1, -0x1

    :try_start_1
    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1311
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsSPenPointChanged:Z

    goto :goto_1

    .line 1297
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1307
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public updateHoverPopup()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1104
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    if-nez v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentWidth:I

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/glview/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 1106
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1111
    :goto_0
    return-void

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/glview/HoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_1
.end method

.method public updateHoverPopup(Landroid/view/View;III)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    .prologue
    const/4 v5, 0x0

    .line 1117
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/glview/HoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    .line 1125
    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentWidth:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentHeight:I

    if-eqz v1, :cond_0

    .line 1130
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 1132
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1133
    .local v0, "oldParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 1134
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "oldParent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1138
    :cond_3
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1140
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1146
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1147
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosY:I

    iget v4, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    iget v5, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1150
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_5

    .line 1153
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosX:I

    iget v4, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_0

    .line 1156
    :cond_5
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v1, p1, v5, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
