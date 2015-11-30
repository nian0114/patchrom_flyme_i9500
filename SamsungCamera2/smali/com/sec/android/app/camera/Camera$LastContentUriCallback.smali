.class Lcom/sec/android/app/camera/Camera$LastContentUriCallback;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LastContentUriCallback"
.end annotation


# instance fields
.field private mKeyValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "keyValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17907
    .local p3, "rectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17908
    iput-object p2, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    .line 17909
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 19

    .prologue
    .line 17912
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v15

    if-nez v15, :cond_1

    .line 17913
    const-string v15, "Camera2"

    const-string v16, "onCompleted: mEngine is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 18086
    :cond_0
    :goto_0
    return-void

    .line 17921
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 17922
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 17924
    const-string v15, "quickview"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "reviewon"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 17925
    :cond_2
    const-string v15, "reviewon"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v15}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 17927
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    const-string v15, "android.intent.action.BUDDY_PHOTO_SHARING"

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17928
    .local v8, "intent":Landroid/content/Intent;
    const-string v15, "image/*"

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 17929
    const-string v15, "FACE_IMAGE_URI"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 17930
    const-string v15, "FACE_IMAGE_MODIFIED_DATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CommonEngine;->getLastDateTaken()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v8, v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 17931
    const-string v15, "FACE_IMAGE_PATH"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CommonEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17932
    const-string v15, "FACE_IMAGE_SIZE"

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CommonEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v8, v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 17933
    const-string v15, "startApp"

    const-string v16, "camera"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17934
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v15, v8}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 17986
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 17939
    :cond_3
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 17940
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v15, "com.sec.android.gallery3d"

    const-string v16, "com.sec.android.gallery3d.app.Gallery"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17942
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v15}, Lcom/sec/android/app/camera/Camera;->isSecureKeyguardLocked()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 17943
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    .line 17944
    const-string v15, "android.intent.action.VIEW"

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17945
    const-string v15, "useUriList"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17946
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 17947
    .local v14, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-static {v14}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 17948
    const-string v15, "uriListData"

    invoke-virtual {v8, v15, v14}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 17949
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 17950
    .local v7, "index":I
    if-lez v7, :cond_8

    .line 17951
    const-string v15, "KEY_ITEM_POSITION"

    invoke-virtual {v8, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17952
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 17966
    .end local v7    # "index":I
    .end local v14    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsFromCover:Z
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$7800(Lcom/sec/android/app/camera/Camera;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 17967
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/camera/CameraSettings;->setCoverModeGallery(Z)V

    .line 17969
    const-string v15, "createdByCovermode"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17971
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsFromLockScreen:Z
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$7900(Lcom/sec/android/app/camera/Camera;)Z

    move-result v15

    if-nez v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v15}, Lcom/sec/android/app/camera/Camera;->isSecureKeyguardLocked()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 17973
    :cond_6
    const-string v15, "createdByLockscreen"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17975
    :cond_7
    const-string v15, "from-Camera"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17977
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v15, v8}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 17978
    :catch_0
    move-exception v5

    .line 17979
    .local v5, "ex":Landroid/content/ActivityNotFoundException;
    const-string v15, "Camera2"

    const-string v16, "Gallery was disabled!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 17980
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    goto/16 :goto_0

    .line 17954
    .end local v5    # "ex":Landroid/content/ActivityNotFoundException;
    .restart local v7    # "index":I
    .restart local v14    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_8
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    .line 17958
    .end local v7    # "index":I
    .end local v14    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v15

    if-eqz v15, :cond_a

    .line 17959
    const-string v15, "android.intent.action.VIEW"

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17960
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 17962
    :cond_a
    sget-object v15, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 17987
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_b
    const-string v15, "from_app"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 17988
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$500(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v15

    if-eqz v15, :cond_c

    .line 17989
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$500(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 17992
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsFromSNote:Z
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$8000(Lcom/sec/android/app/camera/Camera;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 17993
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 17994
    .local v6, "extras":Landroid/os/Bundle;
    const-string v15, "bitmap-data"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 17996
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 17997
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v15, "inline-data"

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17998
    invoke-virtual {v8, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 17999
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 18001
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v16, 0x7d1

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1, v8}, Lcom/sec/android/app/camera/Camera;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 18004
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_d
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 18005
    .local v12, "newExtras":Landroid/os/Bundle;
    const-string v15, "fromApp"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18022
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$8100(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v15

    if-eqz v15, :cond_14

    .line 18023
    const-string v15, "output"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/Camera;->access$8100(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 18024
    const/4 v13, 0x0

    .line 18026
    .local v13, "outputStream":Ljava/io/OutputStream;
    :try_start_2
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$8100(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18027
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 18028
    .local v4, "dir_path":Ljava/lang/String;
    if-eqz v4, :cond_e

    .line 18029
    new-instance v3, Ljava/io/File;

    .end local v3    # "dir":Ljava/io/File;
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18030
    .restart local v3    # "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_e

    .line 18031
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 18035
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v15}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/Camera;->access$8100(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v13

    .line 18037
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/camera/CommonEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v9

    .line 18038
    .local v9, "lastCaptureData":Lcom/sec/android/app/camera/CaptureData;
    if-eqz v9, :cond_f

    .line 18039
    invoke-virtual {v9}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v10

    .line 18041
    .local v10, "lastCaptureRawData":[B
    if-eqz v10, :cond_f

    .line 18042
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v15, v10}, Lcom/sec/android/app/camera/Camera;->access$8202(Lcom/sec/android/app/camera/Camera;[B)[B

    .line 18045
    .end local v10    # "lastCaptureRawData":[B
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$8200(Lcom/sec/android/app/camera/Camera;)[B

    move-result-object v15

    if-eqz v15, :cond_10

    .line 18046
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$8200(Lcom/sec/android/app/camera/Camera;)[B

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/io/OutputStream;->write([B)V

    .line 18049
    :cond_10
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18053
    invoke-static {v13}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 18061
    .end local v3    # "dir":Ljava/io/File;
    .end local v4    # "dir_path":Ljava/lang/String;
    .end local v9    # "lastCaptureData":Lcom/sec/android/app/camera/CaptureData;
    .end local v13    # "outputStream":Ljava/io/OutputStream;
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mSkipSaveDiscard:Z
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$8400(Lcom/sec/android/app/camera/Camera;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 18062
    const-string v15, "skip-savediscard"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18065
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v11

    .line 18066
    .local v11, "location":Landroid/location/Location;
    if-eqz v11, :cond_12

    .line 18067
    const-string v15, "latitude"

    invoke-virtual {v11}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v15, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 18068
    const-string v15, "longitude"

    invoke-virtual {v11}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v15, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 18070
    :cond_12
    const-string v15, "takenTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CommonEngine;->getLastDateTaken()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v15, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 18072
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v15}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/camera/CameraSettings;->getContextualFilename()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    .line 18073
    if-eqz v11, :cond_13

    .line 18074
    const-string v15, "weather"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/Camera;->getWeather()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18078
    :cond_13
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 18079
    .local v2, "cropIntent":Landroid/content/Intent;
    const-string v15, "com.sec.android.app.camera"

    const-string v16, "com.sec.android.app.camera.CropImage"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18081
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 18082
    invoke-virtual {v2, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 18084
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v16, 0x7d1

    move/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 18050
    .end local v2    # "cropIntent":Landroid/content/Intent;
    .end local v11    # "location":Landroid/location/Location;
    .restart local v13    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v15

    .line 18053
    invoke-static {v13}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_3

    :catchall_0
    move-exception v15

    invoke-static {v13}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v15

    .line 18055
    .end local v13    # "outputStream":Ljava/io/OutputStream;
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mReturnUri:Z
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$8300(Lcom/sec/android/app/camera/Camera;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 18056
    const-string v15, "return-uri"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 18058
    :cond_15
    const-string v15, "return-data"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 17935
    .end local v12    # "newExtras":Landroid/os/Bundle;
    :catch_2
    move-exception v15

    goto/16 :goto_1
.end method
