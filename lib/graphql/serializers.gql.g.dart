// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(GCommentConnectInput.serializer)
      ..add(GCommentConnectOrCreateInput.serializer)
      ..add(GCommentConnectOrCreateWhere.serializer)
      ..add(GCommentConnectWhere.serializer)
      ..add(GCommentCreateInput.serializer)
      ..add(GCommentCreatorAggregateInput.serializer)
      ..add(GCommentCreatorConnectFieldInput.serializer)
      ..add(GCommentCreatorConnectOrCreateFieldInput.serializer)
      ..add(GCommentCreatorConnectOrCreateFieldInputOnCreate.serializer)
      ..add(GCommentCreatorConnectionSort.serializer)
      ..add(GCommentCreatorConnectionWhere.serializer)
      ..add(GCommentCreatorCreateFieldInput.serializer)
      ..add(GCommentCreatorDeleteFieldInput.serializer)
      ..add(GCommentCreatorDisconnectFieldInput.serializer)
      ..add(GCommentCreatorFieldInput.serializer)
      ..add(GCommentCreatorNodeAggregationWhereInput.serializer)
      ..add(GCommentCreatorUpdateConnectionInput.serializer)
      ..add(GCommentCreatorUpdateFieldInput.serializer)
      ..add(GCommentDeleteInput.serializer)
      ..add(GCommentDisconnectInput.serializer)
      ..add(GCommentOptions.serializer)
      ..add(GCommentPostAggregateInput.serializer)
      ..add(GCommentPostConnectFieldInput.serializer)
      ..add(GCommentPostConnectOrCreateFieldInput.serializer)
      ..add(GCommentPostConnectOrCreateFieldInputOnCreate.serializer)
      ..add(GCommentPostConnectionSort.serializer)
      ..add(GCommentPostConnectionWhere.serializer)
      ..add(GCommentPostCreateFieldInput.serializer)
      ..add(GCommentPostDeleteFieldInput.serializer)
      ..add(GCommentPostDisconnectFieldInput.serializer)
      ..add(GCommentPostFieldInput.serializer)
      ..add(GCommentPostNodeAggregationWhereInput.serializer)
      ..add(GCommentPostUpdateConnectionInput.serializer)
      ..add(GCommentPostUpdateFieldInput.serializer)
      ..add(GCommentRelationInput.serializer)
      ..add(GCommentSort.serializer)
      ..add(GCommentUniqueWhere.serializer)
      ..add(GCommentUpdateInput.serializer)
      ..add(GCommentWhere.serializer)
      ..add(GCreateCommentaryData.serializer)
      ..add(GCreateCommentaryData_createComments.serializer)
      ..add(GCreateCommentaryData_createComments_info.serializer)
      ..add(GCreateCommentaryReq.serializer)
      ..add(GCreateCommentaryVars.serializer)
      ..add(GCreatePostData.serializer)
      ..add(GCreatePostData_createPosts.serializer)
      ..add(GCreatePostData_createPosts_info.serializer)
      ..add(GCreatePostReq.serializer)
      ..add(GCreatePostVars.serializer)
      ..add(GCreateStoriesData.serializer)
      ..add(GCreateStoriesData_createStories.serializer)
      ..add(GCreateStoriesData_createStories_info.serializer)
      ..add(GCreateStoriesReq.serializer)
      ..add(GCreateStoriesVars.serializer)
      ..add(GDateTime.serializer)
      ..add(GDislikePostData.serializer)
      ..add(GDislikePostData_updateUsers.serializer)
      ..add(GDislikePostData_updateUsers_info.serializer)
      ..add(GDislikePostReq.serializer)
      ..add(GDislikePostVars.serializer)
      ..add(GFeedData.serializer)
      ..add(GFeedData_users.serializer)
      ..add(GFeedData_users_friends.serializer)
      ..add(GFeedData_users_friends_posts.serializer)
      ..add(GFeedData_users_friends_posts_commentsConnection.serializer)
      ..add(GFeedData_users_friends_posts_creator.serializer)
      ..add(GFeedData_users_friends_posts_likesConnection.serializer)
      ..add(GFeedData_users_friends_storiesConnection.serializer)
      ..add(GFeedData_users_postLikes.serializer)
      ..add(GFeedInfoData.serializer)
      ..add(GFeedInfoData_users.serializer)
      ..add(GFeedInfoData_users_friendsConnection.serializer)
      ..add(GFeedInfoData_users_postsConnection.serializer)
      ..add(GFeedInfoData_users_storiesConnection.serializer)
      ..add(GFeedInfoReq.serializer)
      ..add(GFeedInfoVars.serializer)
      ..add(GFeedReq.serializer)
      ..add(GFeedVars.serializer)
      ..add(GFriendsLocalisationData.serializer)
      ..add(GFriendsLocalisationData_users.serializer)
      ..add(GFriendsLocalisationData_users_friends.serializer)
      ..add(GFriendsLocalisationData_users_friends_location.serializer)
      ..add(GFriendsLocalisationData_users_location.serializer)
      ..add(GFriendsLocalisationReq.serializer)
      ..add(GFriendsLocalisationVars.serializer)
      ..add(GHashtagCreateInput.serializer)
      ..add(GHashtagOptions.serializer)
      ..add(GHashtagSort.serializer)
      ..add(GHashtagUpdateInput.serializer)
      ..add(GHashtagWhere.serializer)
      ..add(GLikePostData.serializer)
      ..add(GLikePostData_updateUsers.serializer)
      ..add(GLikePostData_updateUsers_info.serializer)
      ..add(GLikePostReq.serializer)
      ..add(GLikePostVars.serializer)
      ..add(GLoadCommentsData.serializer)
      ..add(GLoadCommentsData_comments.serializer)
      ..add(GLoadCommentsData_comments_creator.serializer)
      ..add(GLoadCommentsReq.serializer)
      ..add(GLoadCommentsVars.serializer)
      ..add(GPointDistance.serializer)
      ..add(GPointInput.serializer)
      ..add(GPostCommentsAggregateInput.serializer)
      ..add(GPostCommentsConnectFieldInput.serializer)
      ..add(GPostCommentsConnectOrCreateFieldInput.serializer)
      ..add(GPostCommentsConnectOrCreateFieldInputOnCreate.serializer)
      ..add(GPostCommentsConnectionSort.serializer)
      ..add(GPostCommentsConnectionWhere.serializer)
      ..add(GPostCommentsCreateFieldInput.serializer)
      ..add(GPostCommentsDeleteFieldInput.serializer)
      ..add(GPostCommentsDisconnectFieldInput.serializer)
      ..add(GPostCommentsFieldInput.serializer)
      ..add(GPostCommentsNodeAggregationWhereInput.serializer)
      ..add(GPostCommentsUpdateConnectionInput.serializer)
      ..add(GPostCommentsUpdateFieldInput.serializer)
      ..add(GPostConnectInput.serializer)
      ..add(GPostConnectOrCreateInput.serializer)
      ..add(GPostConnectOrCreateWhere.serializer)
      ..add(GPostConnectWhere.serializer)
      ..add(GPostCreateInput.serializer)
      ..add(GPostCreatorAggregateInput.serializer)
      ..add(GPostCreatorConnectFieldInput.serializer)
      ..add(GPostCreatorConnectOrCreateFieldInput.serializer)
      ..add(GPostCreatorConnectOrCreateFieldInputOnCreate.serializer)
      ..add(GPostCreatorConnectionSort.serializer)
      ..add(GPostCreatorConnectionWhere.serializer)
      ..add(GPostCreatorCreateFieldInput.serializer)
      ..add(GPostCreatorDeleteFieldInput.serializer)
      ..add(GPostCreatorDisconnectFieldInput.serializer)
      ..add(GPostCreatorFieldInput.serializer)
      ..add(GPostCreatorNodeAggregationWhereInput.serializer)
      ..add(GPostCreatorUpdateConnectionInput.serializer)
      ..add(GPostCreatorUpdateFieldInput.serializer)
      ..add(GPostDeleteInput.serializer)
      ..add(GPostDisconnectInput.serializer)
      ..add(GPostLikesAggregateInput.serializer)
      ..add(GPostLikesConnectFieldInput.serializer)
      ..add(GPostLikesConnectOrCreateFieldInput.serializer)
      ..add(GPostLikesConnectOrCreateFieldInputOnCreate.serializer)
      ..add(GPostLikesConnectionSort.serializer)
      ..add(GPostLikesConnectionWhere.serializer)
      ..add(GPostLikesCreateFieldInput.serializer)
      ..add(GPostLikesDeleteFieldInput.serializer)
      ..add(GPostLikesDisconnectFieldInput.serializer)
      ..add(GPostLikesFieldInput.serializer)
      ..add(GPostLikesNodeAggregationWhereInput.serializer)
      ..add(GPostLikesUpdateConnectionInput.serializer)
      ..add(GPostLikesUpdateFieldInput.serializer)
      ..add(GPostOptions.serializer)
      ..add(GPostRelationInput.serializer)
      ..add(GPostSort.serializer)
      ..add(GPostUniqueWhere.serializer)
      ..add(GPostUpdateInput.serializer)
      ..add(GPostWhere.serializer)
      ..add(GProfileData.serializer)
      ..add(GProfileData_users.serializer)
      ..add(GProfilePostsData.serializer)
      ..add(GProfilePostsData_users.serializer)
      ..add(GProfilePostsData_users_postLikes.serializer)
      ..add(GProfilePostsData_users_posts.serializer)
      ..add(GProfilePostsData_users_posts_commentsConnection.serializer)
      ..add(GProfilePostsData_users_posts_creator.serializer)
      ..add(GProfilePostsData_users_posts_likesConnection.serializer)
      ..add(GProfilePostsReq.serializer)
      ..add(GProfilePostsVars.serializer)
      ..add(GProfileReq.serializer)
      ..add(GProfileVars.serializer)
      ..add(GRequestResetPasswordData.serializer)
      ..add(GRequestResetPasswordReq.serializer)
      ..add(GRequestResetPasswordVars.serializer)
      ..add(GRequestStatus.serializer)
      ..add(GSignInData.serializer)
      ..add(GSignInData_signIn.serializer)
      ..add(GSignInData_signIn_user.serializer)
      ..add(GSignInReq.serializer)
      ..add(GSignInVars.serializer)
      ..add(GSignUpData.serializer)
      ..add(GSignUpData_signUp.serializer)
      ..add(GSignUpData_signUp_user.serializer)
      ..add(GSignUpReq.serializer)
      ..add(GSignUpVars.serializer)
      ..add(GSortDirection.serializer)
      ..add(GStatusCreateInput.serializer)
      ..add(GStatusSort.serializer)
      ..add(GStatusUpdateInput.serializer)
      ..add(GStatusWhere.serializer)
      ..add(GStoryConnectInput.serializer)
      ..add(GStoryConnectOrCreateInput.serializer)
      ..add(GStoryConnectOrCreateWhere.serializer)
      ..add(GStoryConnectWhere.serializer)
      ..add(GStoryCreateInput.serializer)
      ..add(GStoryCreatorAggregateInput.serializer)
      ..add(GStoryCreatorConnectFieldInput.serializer)
      ..add(GStoryCreatorConnectOrCreateFieldInput.serializer)
      ..add(GStoryCreatorConnectOrCreateFieldInputOnCreate.serializer)
      ..add(GStoryCreatorConnectionSort.serializer)
      ..add(GStoryCreatorConnectionWhere.serializer)
      ..add(GStoryCreatorCreateFieldInput.serializer)
      ..add(GStoryCreatorDeleteFieldInput.serializer)
      ..add(GStoryCreatorDisconnectFieldInput.serializer)
      ..add(GStoryCreatorFieldInput.serializer)
      ..add(GStoryCreatorNodeAggregationWhereInput.serializer)
      ..add(GStoryCreatorUpdateConnectionInput.serializer)
      ..add(GStoryCreatorUpdateFieldInput.serializer)
      ..add(GStoryDeleteInput.serializer)
      ..add(GStoryDisconnectInput.serializer)
      ..add(GStoryLikesAggregateInput.serializer)
      ..add(GStoryLikesConnectFieldInput.serializer)
      ..add(GStoryLikesConnectOrCreateFieldInput.serializer)
      ..add(GStoryLikesConnectOrCreateFieldInputOnCreate.serializer)
      ..add(GStoryLikesConnectionSort.serializer)
      ..add(GStoryLikesConnectionWhere.serializer)
      ..add(GStoryLikesCreateFieldInput.serializer)
      ..add(GStoryLikesDeleteFieldInput.serializer)
      ..add(GStoryLikesDisconnectFieldInput.serializer)
      ..add(GStoryLikesFieldInput.serializer)
      ..add(GStoryLikesNodeAggregationWhereInput.serializer)
      ..add(GStoryLikesUpdateConnectionInput.serializer)
      ..add(GStoryLikesUpdateFieldInput.serializer)
      ..add(GStoryOptions.serializer)
      ..add(GStoryRelationInput.serializer)
      ..add(GStorySort.serializer)
      ..add(GStoryUniqueWhere.serializer)
      ..add(GStoryUpdateInput.serializer)
      ..add(GStoryWhere.serializer)
      ..add(GUpdateLocationData.serializer)
      ..add(GUpdateLocationData_updateUsers.serializer)
      ..add(GUpdateLocationData_updateUsers_users.serializer)
      ..add(GUpdateLocationData_updateUsers_users_location.serializer)
      ..add(GUpdateLocationReq.serializer)
      ..add(GUpdateLocationVars.serializer)
      ..add(GUploadFilesData.serializer)
      ..add(GUploadFilesReq.serializer)
      ..add(GUploadFilesVars.serializer)
      ..add(GUserCommentLikesAggregateInput.serializer)
      ..add(GUserCommentLikesConnectFieldInput.serializer)
      ..add(GUserCommentLikesConnectOrCreateFieldInput.serializer)
      ..add(GUserCommentLikesConnectOrCreateFieldInputOnCreate.serializer)
      ..add(GUserCommentLikesConnectionSort.serializer)
      ..add(GUserCommentLikesConnectionWhere.serializer)
      ..add(GUserCommentLikesCreateFieldInput.serializer)
      ..add(GUserCommentLikesDeleteFieldInput.serializer)
      ..add(GUserCommentLikesDisconnectFieldInput.serializer)
      ..add(GUserCommentLikesFieldInput.serializer)
      ..add(GUserCommentLikesNodeAggregationWhereInput.serializer)
      ..add(GUserCommentLikesUpdateConnectionInput.serializer)
      ..add(GUserCommentLikesUpdateFieldInput.serializer)
      ..add(GUserConnectInput.serializer)
      ..add(GUserConnectOrCreateInput.serializer)
      ..add(GUserConnectOrCreateWhere.serializer)
      ..add(GUserConnectWhere.serializer)
      ..add(GUserCreateInput.serializer)
      ..add(GUserDeleteInput.serializer)
      ..add(GUserDisconnectInput.serializer)
      ..add(GUserFriendsAggregateInput.serializer)
      ..add(GUserFriendsConnectFieldInput.serializer)
      ..add(GUserFriendsConnectOrCreateFieldInput.serializer)
      ..add(GUserFriendsConnectOrCreateFieldInputOnCreate.serializer)
      ..add(GUserFriendsConnectionSort.serializer)
      ..add(GUserFriendsConnectionWhere.serializer)
      ..add(GUserFriendsCreateFieldInput.serializer)
      ..add(GUserFriendsDeleteFieldInput.serializer)
      ..add(GUserFriendsDisconnectFieldInput.serializer)
      ..add(GUserFriendsFieldInput.serializer)
      ..add(GUserFriendsNodeAggregationWhereInput.serializer)
      ..add(GUserFriendsUpdateConnectionInput.serializer)
      ..add(GUserFriendsUpdateFieldInput.serializer)
      ..add(GUserOptions.serializer)
      ..add(GUserPostLikesAggregateInput.serializer)
      ..add(GUserPostLikesConnectFieldInput.serializer)
      ..add(GUserPostLikesConnectOrCreateFieldInput.serializer)
      ..add(GUserPostLikesConnectOrCreateFieldInputOnCreate.serializer)
      ..add(GUserPostLikesConnectionSort.serializer)
      ..add(GUserPostLikesConnectionWhere.serializer)
      ..add(GUserPostLikesCreateFieldInput.serializer)
      ..add(GUserPostLikesDeleteFieldInput.serializer)
      ..add(GUserPostLikesDisconnectFieldInput.serializer)
      ..add(GUserPostLikesFieldInput.serializer)
      ..add(GUserPostLikesNodeAggregationWhereInput.serializer)
      ..add(GUserPostLikesUpdateConnectionInput.serializer)
      ..add(GUserPostLikesUpdateFieldInput.serializer)
      ..add(GUserPostsAggregateInput.serializer)
      ..add(GUserPostsConnectFieldInput.serializer)
      ..add(GUserPostsConnectOrCreateFieldInput.serializer)
      ..add(GUserPostsConnectOrCreateFieldInputOnCreate.serializer)
      ..add(GUserPostsConnectionSort.serializer)
      ..add(GUserPostsConnectionWhere.serializer)
      ..add(GUserPostsCreateFieldInput.serializer)
      ..add(GUserPostsDeleteFieldInput.serializer)
      ..add(GUserPostsDisconnectFieldInput.serializer)
      ..add(GUserPostsFieldInput.serializer)
      ..add(GUserPostsNodeAggregationWhereInput.serializer)
      ..add(GUserPostsUpdateConnectionInput.serializer)
      ..add(GUserPostsUpdateFieldInput.serializer)
      ..add(GUserRelationInput.serializer)
      ..add(GUserSort.serializer)
      ..add(GUserStoriesAggregateInput.serializer)
      ..add(GUserStoriesConnectFieldInput.serializer)
      ..add(GUserStoriesConnectOrCreateFieldInput.serializer)
      ..add(GUserStoriesConnectOrCreateFieldInputOnCreate.serializer)
      ..add(GUserStoriesConnectionSort.serializer)
      ..add(GUserStoriesConnectionWhere.serializer)
      ..add(GUserStoriesCreateFieldInput.serializer)
      ..add(GUserStoriesDeleteFieldInput.serializer)
      ..add(GUserStoriesDisconnectFieldInput.serializer)
      ..add(GUserStoriesFieldInput.serializer)
      ..add(GUserStoriesNodeAggregationWhereInput.serializer)
      ..add(GUserStoriesUpdateConnectionInput.serializer)
      ..add(GUserStoriesUpdateFieldInput.serializer)
      ..add(GUserStoryLikesAggregateInput.serializer)
      ..add(GUserStoryLikesConnectFieldInput.serializer)
      ..add(GUserStoryLikesConnectOrCreateFieldInput.serializer)
      ..add(GUserStoryLikesConnectOrCreateFieldInputOnCreate.serializer)
      ..add(GUserStoryLikesConnectionSort.serializer)
      ..add(GUserStoryLikesConnectionWhere.serializer)
      ..add(GUserStoryLikesCreateFieldInput.serializer)
      ..add(GUserStoryLikesDeleteFieldInput.serializer)
      ..add(GUserStoryLikesDisconnectFieldInput.serializer)
      ..add(GUserStoryLikesFieldInput.serializer)
      ..add(GUserStoryLikesNodeAggregationWhereInput.serializer)
      ..add(GUserStoryLikesUpdateConnectionInput.serializer)
      ..add(GUserStoryLikesUpdateFieldInput.serializer)
      ..add(GUserUniqueWhere.serializer)
      ..add(GUserUpdateInput.serializer)
      ..add(GUserWhere.serializer)
      ..add(GloadStoriesData.serializer)
      ..add(GloadStoriesData_users.serializer)
      ..add(GloadStoriesData_users_stories.serializer)
      ..add(GloadStoriesData_users_stories_creator.serializer)
      ..add(GloadStoriesReq.serializer)
      ..add(GloadStoriesVars.serializer)
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCommentConnectInput)]),
          () => new ListBuilder<GCommentConnectInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCommentConnectInput)]),
          () => new ListBuilder<GCommentConnectInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCommentCreateInput)]),
          () => new ListBuilder<GCommentCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCommentCreatorAggregateInput)]),
          () => new ListBuilder<GCommentCreatorAggregateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCommentCreatorAggregateInput)]),
          () => new ListBuilder<GCommentCreatorAggregateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GCommentCreatorConnectionWhere)]),
          () => new ListBuilder<GCommentCreatorConnectionWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GCommentCreatorConnectionWhere)]),
          () => new ListBuilder<GCommentCreatorConnectionWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GCommentCreatorNodeAggregationWhereInput)]),
          () => new ListBuilder<GCommentCreatorNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GCommentCreatorNodeAggregationWhereInput)]),
          () => new ListBuilder<GCommentCreatorNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCommentPostAggregateInput)]),
          () => new ListBuilder<GCommentPostAggregateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCommentPostAggregateInput)]),
          () => new ListBuilder<GCommentPostAggregateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCommentPostConnectionWhere)]),
          () => new ListBuilder<GCommentPostConnectionWhere>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCommentPostConnectionWhere)]),
          () => new ListBuilder<GCommentPostConnectionWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GCommentPostNodeAggregationWhereInput)]),
          () => new ListBuilder<GCommentPostNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GCommentPostNodeAggregationWhereInput)]),
          () => new ListBuilder<GCommentPostNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GCommentSort)]),
          () => new ListBuilder<GCommentSort>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GCommentWhere)]),
          () => new ListBuilder<GCommentWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GCommentWhere)]),
          () => new ListBuilder<GCommentWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GFeedData_users)]),
          () => new ListBuilder<GFeedData_users>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GFeedData_users_friends_posts)]),
          () => new ListBuilder<GFeedData_users_friends_posts>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GFeedData_users_postLikes)]),
          () => new ListBuilder<GFeedData_users_postLikes>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GFeedData_users_friends)]),
          () => new ListBuilder<GFeedData_users_friends>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GFeedInfoData_users)]),
          () => new ListBuilder<GFeedInfoData_users>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GFriendsLocalisationData_users)]),
          () => new ListBuilder<GFriendsLocalisationData_users>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GFriendsLocalisationData_users_friends)]),
          () => new ListBuilder<GFriendsLocalisationData_users_friends>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GHashtagSort)]),
          () => new ListBuilder<GHashtagSort>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GHashtagWhere)]),
          () => new ListBuilder<GHashtagWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GHashtagWhere)]),
          () => new ListBuilder<GHashtagWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GLoadCommentsData_comments)]),
          () => new ListBuilder<GLoadCommentsData_comments>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostCommentsAggregateInput)]),
          () => new ListBuilder<GPostCommentsAggregateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostCommentsAggregateInput)]),
          () => new ListBuilder<GPostCommentsAggregateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostCommentsConnectFieldInput)]),
          () => new ListBuilder<GPostCommentsConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostCommentsDisconnectFieldInput)]),
          () => new ListBuilder<GPostCommentsDisconnectFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostCommentsCreateFieldInput)]),
          () => new ListBuilder<GPostCommentsCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostCommentsDeleteFieldInput)]),
          () => new ListBuilder<GPostCommentsDeleteFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostCommentsConnectOrCreateFieldInput)]),
          () => new ListBuilder<GPostCommentsConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostCommentsConnectionWhere)]),
          () => new ListBuilder<GPostCommentsConnectionWhere>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostCommentsConnectionWhere)]),
          () => new ListBuilder<GPostCommentsConnectionWhere>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostCommentsCreateFieldInput)]),
          () => new ListBuilder<GPostCommentsCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostCommentsConnectFieldInput)]),
          () => new ListBuilder<GPostCommentsConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostCommentsConnectOrCreateFieldInput)]),
          () => new ListBuilder<GPostCommentsConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostCommentsNodeAggregationWhereInput)]),
          () => new ListBuilder<GPostCommentsNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostCommentsNodeAggregationWhereInput)]),
          () => new ListBuilder<GPostCommentsNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GPostConnectInput)]),
          () => new ListBuilder<GPostConnectInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GPostConnectInput)]),
          () => new ListBuilder<GPostConnectInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GPostCreateInput)]),
          () => new ListBuilder<GPostCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostCreatorAggregateInput)]),
          () => new ListBuilder<GPostCreatorAggregateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostCreatorAggregateInput)]),
          () => new ListBuilder<GPostCreatorAggregateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostCreatorConnectionWhere)]),
          () => new ListBuilder<GPostCreatorConnectionWhere>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostCreatorConnectionWhere)]),
          () => new ListBuilder<GPostCreatorConnectionWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostCreatorNodeAggregationWhereInput)]),
          () => new ListBuilder<GPostCreatorNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostCreatorNodeAggregationWhereInput)]),
          () => new ListBuilder<GPostCreatorNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostLikesAggregateInput)]),
          () => new ListBuilder<GPostLikesAggregateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostLikesAggregateInput)]),
          () => new ListBuilder<GPostLikesAggregateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostLikesConnectFieldInput)]),
          () => new ListBuilder<GPostLikesConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostCommentsConnectFieldInput)]),
          () => new ListBuilder<GPostCommentsConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostLikesConnectFieldInput)]),
          () => new ListBuilder<GPostLikesConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostLikesDisconnectFieldInput)]),
          () => new ListBuilder<GPostLikesDisconnectFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostLikesCreateFieldInput)]),
          () => new ListBuilder<GPostLikesCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostLikesDeleteFieldInput)]),
          () => new ListBuilder<GPostLikesDeleteFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostLikesConnectOrCreateFieldInput)]),
          () => new ListBuilder<GPostLikesConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostLikesConnectOrCreateFieldInput)]),
          () => new ListBuilder<GPostLikesConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostCommentsConnectOrCreateFieldInput)]),
          () => new ListBuilder<GPostCommentsConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostLikesConnectionWhere)]),
          () => new ListBuilder<GPostLikesConnectionWhere>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostLikesConnectionWhere)]),
          () => new ListBuilder<GPostLikesConnectionWhere>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostLikesCreateFieldInput)]),
          () => new ListBuilder<GPostLikesCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostCommentsCreateFieldInput)]),
          () => new ListBuilder<GPostCommentsCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostLikesCreateFieldInput)]),
          () => new ListBuilder<GPostLikesCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostLikesConnectFieldInput)]),
          () => new ListBuilder<GPostLikesConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostLikesConnectOrCreateFieldInput)]),
          () => new ListBuilder<GPostLikesConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostLikesDeleteFieldInput)]),
          () => new ListBuilder<GPostLikesDeleteFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostCommentsDeleteFieldInput)]),
          () => new ListBuilder<GPostCommentsDeleteFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostLikesDisconnectFieldInput)]),
          () => new ListBuilder<GPostLikesDisconnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostCommentsDisconnectFieldInput)]),
          () => new ListBuilder<GPostCommentsDisconnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostLikesNodeAggregationWhereInput)]),
          () => new ListBuilder<GPostLikesNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostLikesNodeAggregationWhereInput)]),
          () => new ListBuilder<GPostLikesNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GPostSort)]),
          () => new ListBuilder<GPostSort>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GPostWhere)]),
          () => new ListBuilder<GPostWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GPostWhere)]),
          () => new ListBuilder<GPostWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GProfileData_users)]),
          () => new ListBuilder<GProfileData_users>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProfilePostsData_users)]),
          () => new ListBuilder<GProfilePostsData_users>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProfilePostsData_users_postLikes)]),
          () => new ListBuilder<GProfilePostsData_users_postLikes>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProfilePostsData_users_posts)]),
          () => new ListBuilder<GProfilePostsData_users_posts>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GStatusWhere)]),
          () => new ListBuilder<GStatusWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GStatusWhere)]),
          () => new ListBuilder<GStatusWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GRequestStatus)]),
          () => new ListBuilder<GRequestStatus>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GRequestStatus)]),
          () => new ListBuilder<GRequestStatus>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GStoryConnectInput)]),
          () => new ListBuilder<GStoryConnectInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GStoryConnectInput)]),
          () => new ListBuilder<GStoryConnectInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GStoryCreateInput)]),
          () => new ListBuilder<GStoryCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GStoryCreatorAggregateInput)]),
          () => new ListBuilder<GStoryCreatorAggregateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GStoryCreatorAggregateInput)]),
          () => new ListBuilder<GStoryCreatorAggregateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GStoryCreatorConnectionWhere)]),
          () => new ListBuilder<GStoryCreatorConnectionWhere>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GStoryCreatorConnectionWhere)]),
          () => new ListBuilder<GStoryCreatorConnectionWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GStoryCreatorNodeAggregationWhereInput)]),
          () => new ListBuilder<GStoryCreatorNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GStoryCreatorNodeAggregationWhereInput)]),
          () => new ListBuilder<GStoryCreatorNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GStoryLikesAggregateInput)]),
          () => new ListBuilder<GStoryLikesAggregateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GStoryLikesAggregateInput)]),
          () => new ListBuilder<GStoryLikesAggregateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GStoryLikesConnectFieldInput)]),
          () => new ListBuilder<GStoryLikesConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GStoryLikesConnectFieldInput)]),
          () => new ListBuilder<GStoryLikesConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GStoryLikesDisconnectFieldInput)]),
          () => new ListBuilder<GStoryLikesDisconnectFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GStoryLikesCreateFieldInput)]),
          () => new ListBuilder<GStoryLikesCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GStoryLikesDeleteFieldInput)]),
          () => new ListBuilder<GStoryLikesDeleteFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GStoryLikesConnectOrCreateFieldInput)]),
          () => new ListBuilder<GStoryLikesConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GStoryLikesConnectOrCreateFieldInput)]),
          () => new ListBuilder<GStoryLikesConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GStoryLikesConnectionWhere)]),
          () => new ListBuilder<GStoryLikesConnectionWhere>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GStoryLikesConnectionWhere)]),
          () => new ListBuilder<GStoryLikesConnectionWhere>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GStoryLikesCreateFieldInput)]),
          () => new ListBuilder<GStoryLikesCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GStoryLikesCreateFieldInput)]),
          () => new ListBuilder<GStoryLikesCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GStoryLikesConnectFieldInput)]),
          () => new ListBuilder<GStoryLikesConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GStoryLikesConnectOrCreateFieldInput)]),
          () => new ListBuilder<GStoryLikesConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GStoryLikesDeleteFieldInput)]),
          () => new ListBuilder<GStoryLikesDeleteFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GStoryLikesDisconnectFieldInput)]),
          () => new ListBuilder<GStoryLikesDisconnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GStoryLikesNodeAggregationWhereInput)]),
          () => new ListBuilder<GStoryLikesNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GStoryLikesNodeAggregationWhereInput)]),
          () => new ListBuilder<GStoryLikesNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GStoryLikesUpdateFieldInput)]),
          () => new ListBuilder<GStoryLikesUpdateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GStorySort)]),
          () => new ListBuilder<GStorySort>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GStoryWhere)]),
          () => new ListBuilder<GStoryWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GStoryWhere)]),
          () => new ListBuilder<GStoryWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUpdateLocationData_updateUsers_users)]),
          () => new ListBuilder<GUpdateLocationData_updateUsers_users>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserCommentLikesAggregateInput)]),
          () => new ListBuilder<GUserCommentLikesAggregateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserCommentLikesAggregateInput)]),
          () => new ListBuilder<GUserCommentLikesAggregateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserCommentLikesConnectFieldInput)]),
          () => new ListBuilder<GUserCommentLikesConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserCommentLikesDisconnectFieldInput)]),
          () => new ListBuilder<GUserCommentLikesDisconnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserCommentLikesCreateFieldInput)]),
          () => new ListBuilder<GUserCommentLikesCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserCommentLikesDeleteFieldInput)]),
          () => new ListBuilder<GUserCommentLikesDeleteFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GUserCommentLikesConnectOrCreateFieldInput)
          ]),
          () => new ListBuilder<GUserCommentLikesConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserCommentLikesConnectionWhere)]),
          () => new ListBuilder<GUserCommentLikesConnectionWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserCommentLikesConnectionWhere)]),
          () => new ListBuilder<GUserCommentLikesConnectionWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserCommentLikesCreateFieldInput)]),
          () => new ListBuilder<GUserCommentLikesCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserCommentLikesConnectFieldInput)]),
          () => new ListBuilder<GUserCommentLikesConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GUserCommentLikesConnectOrCreateFieldInput)
          ]),
          () => new ListBuilder<GUserCommentLikesConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GUserCommentLikesNodeAggregationWhereInput)
          ]),
          () => new ListBuilder<GUserCommentLikesNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GUserCommentLikesNodeAggregationWhereInput)
          ]),
          () => new ListBuilder<GUserCommentLikesNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GUserConnectInput)]),
          () => new ListBuilder<GUserConnectInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GUserConnectInput)]),
          () => new ListBuilder<GUserConnectInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GUserConnectInput)]),
          () => new ListBuilder<GUserConnectInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserFriendsAggregateInput)]),
          () => new ListBuilder<GUserFriendsAggregateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserFriendsAggregateInput)]),
          () => new ListBuilder<GUserFriendsAggregateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserFriendsConnectFieldInput)]),
          () => new ListBuilder<GUserFriendsConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserFriendsDisconnectFieldInput)]),
          () => new ListBuilder<GUserFriendsDisconnectFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserFriendsCreateFieldInput)]),
          () => new ListBuilder<GUserFriendsCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserFriendsDeleteFieldInput)]),
          () => new ListBuilder<GUserFriendsDeleteFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserFriendsConnectOrCreateFieldInput)]),
          () => new ListBuilder<GUserFriendsConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserFriendsConnectionWhere)]),
          () => new ListBuilder<GUserFriendsConnectionWhere>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserFriendsConnectionWhere)]),
          () => new ListBuilder<GUserFriendsConnectionWhere>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserFriendsCreateFieldInput)]),
          () => new ListBuilder<GUserFriendsCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserFriendsConnectFieldInput)]),
          () => new ListBuilder<GUserFriendsConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserFriendsConnectOrCreateFieldInput)]),
          () => new ListBuilder<GUserFriendsConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserFriendsNodeAggregationWhereInput)]),
          () => new ListBuilder<GUserFriendsNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserFriendsNodeAggregationWhereInput)]),
          () => new ListBuilder<GUserFriendsNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserPostLikesAggregateInput)]),
          () => new ListBuilder<GUserPostLikesAggregateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserPostLikesAggregateInput)]),
          () => new ListBuilder<GUserPostLikesAggregateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostLikesConnectFieldInput)]),
          () => new ListBuilder<GUserPostLikesConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostLikesDisconnectFieldInput)]),
          () => new ListBuilder<GUserPostLikesDisconnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostLikesCreateFieldInput)]),
          () => new ListBuilder<GUserPostLikesCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostLikesDeleteFieldInput)]),
          () => new ListBuilder<GUserPostLikesDeleteFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostLikesConnectOrCreateFieldInput)]),
          () => new ListBuilder<GUserPostLikesConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserPostLikesConnectionWhere)]),
          () => new ListBuilder<GUserPostLikesConnectionWhere>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserPostLikesConnectionWhere)]),
          () => new ListBuilder<GUserPostLikesConnectionWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostLikesCreateFieldInput)]),
          () => new ListBuilder<GUserPostLikesCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostLikesConnectFieldInput)]),
          () => new ListBuilder<GUserPostLikesConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostLikesConnectOrCreateFieldInput)]),
          () => new ListBuilder<GUserPostLikesConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostLikesNodeAggregationWhereInput)]),
          () => new ListBuilder<GUserPostLikesNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostLikesNodeAggregationWhereInput)]),
          () => new ListBuilder<GUserPostLikesNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserPostsAggregateInput)]),
          () => new ListBuilder<GUserPostsAggregateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserPostsAggregateInput)]),
          () => new ListBuilder<GUserPostsAggregateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserPostsConnectFieldInput)]),
          () => new ListBuilder<GUserPostsConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostLikesConnectFieldInput)]),
          () => new ListBuilder<GUserPostLikesConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserStoriesConnectFieldInput)]),
          () => new ListBuilder<GUserStoriesConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoryLikesConnectFieldInput)]),
          () => new ListBuilder<GUserStoryLikesConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserCommentLikesConnectFieldInput)]),
          () => new ListBuilder<GUserCommentLikesConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserFriendsConnectFieldInput)]),
          () => new ListBuilder<GUserFriendsConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserPostsConnectFieldInput)]),
          () => new ListBuilder<GUserPostsConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostsDisconnectFieldInput)]),
          () => new ListBuilder<GUserPostsDisconnectFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserPostsCreateFieldInput)]),
          () => new ListBuilder<GUserPostsCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserPostsDeleteFieldInput)]),
          () => new ListBuilder<GUserPostsDeleteFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostsConnectOrCreateFieldInput)]),
          () => new ListBuilder<GUserPostsConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostsConnectOrCreateFieldInput)]),
          () => new ListBuilder<GUserPostsConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostLikesConnectOrCreateFieldInput)]),
          () => new ListBuilder<GUserPostLikesConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoriesConnectOrCreateFieldInput)]),
          () => new ListBuilder<GUserStoriesConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoryLikesConnectOrCreateFieldInput)]),
          () => new ListBuilder<GUserStoryLikesConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GUserCommentLikesConnectOrCreateFieldInput)
          ]),
          () => new ListBuilder<GUserCommentLikesConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserFriendsConnectOrCreateFieldInput)]),
          () => new ListBuilder<GUserFriendsConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserPostsConnectionWhere)]),
          () => new ListBuilder<GUserPostsConnectionWhere>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserPostsConnectionWhere)]),
          () => new ListBuilder<GUserPostsConnectionWhere>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserPostsCreateFieldInput)]),
          () => new ListBuilder<GUserPostsCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostLikesCreateFieldInput)]),
          () => new ListBuilder<GUserPostLikesCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserStoriesCreateFieldInput)]),
          () => new ListBuilder<GUserStoriesCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoryLikesCreateFieldInput)]),
          () => new ListBuilder<GUserStoryLikesCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserCommentLikesCreateFieldInput)]),
          () => new ListBuilder<GUserCommentLikesCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserFriendsCreateFieldInput)]),
          () => new ListBuilder<GUserFriendsCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserPostsCreateFieldInput)]),
          () => new ListBuilder<GUserPostsCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserPostsConnectFieldInput)]),
          () => new ListBuilder<GUserPostsConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostsConnectOrCreateFieldInput)]),
          () => new ListBuilder<GUserPostsConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserPostsDeleteFieldInput)]),
          () => new ListBuilder<GUserPostsDeleteFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostLikesDeleteFieldInput)]),
          () => new ListBuilder<GUserPostLikesDeleteFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserStoriesDeleteFieldInput)]),
          () => new ListBuilder<GUserStoriesDeleteFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoryLikesDeleteFieldInput)]),
          () => new ListBuilder<GUserStoryLikesDeleteFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserCommentLikesDeleteFieldInput)]),
          () => new ListBuilder<GUserCommentLikesDeleteFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserFriendsDeleteFieldInput)]),
          () => new ListBuilder<GUserFriendsDeleteFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostsDisconnectFieldInput)]),
          () => new ListBuilder<GUserPostsDisconnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostLikesDisconnectFieldInput)]),
          () => new ListBuilder<GUserPostLikesDisconnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoriesDisconnectFieldInput)]),
          () => new ListBuilder<GUserStoriesDisconnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoryLikesDisconnectFieldInput)]),
          () => new ListBuilder<GUserStoryLikesDisconnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserCommentLikesDisconnectFieldInput)]),
          () => new ListBuilder<GUserCommentLikesDisconnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserFriendsDisconnectFieldInput)]),
          () => new ListBuilder<GUserFriendsDisconnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostsNodeAggregationWhereInput)]),
          () => new ListBuilder<GUserPostsNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostsNodeAggregationWhereInput)]),
          () => new ListBuilder<GUserPostsNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserPostsUpdateFieldInput)]),
          () => new ListBuilder<GUserPostsUpdateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPostLikesUpdateFieldInput)]),
          () => new ListBuilder<GUserPostLikesUpdateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserStoriesUpdateFieldInput)]),
          () => new ListBuilder<GUserStoriesUpdateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoryLikesUpdateFieldInput)]),
          () => new ListBuilder<GUserStoryLikesUpdateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserCommentLikesUpdateFieldInput)]),
          () => new ListBuilder<GUserCommentLikesUpdateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserFriendsUpdateFieldInput)]),
          () => new ListBuilder<GUserFriendsUpdateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GUserSort)]),
          () => new ListBuilder<GUserSort>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserStoriesAggregateInput)]),
          () => new ListBuilder<GUserStoriesAggregateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserStoriesAggregateInput)]),
          () => new ListBuilder<GUserStoriesAggregateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserStoriesConnectFieldInput)]),
          () => new ListBuilder<GUserStoriesConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoriesDisconnectFieldInput)]),
          () => new ListBuilder<GUserStoriesDisconnectFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserStoriesCreateFieldInput)]),
          () => new ListBuilder<GUserStoriesCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserStoriesDeleteFieldInput)]),
          () => new ListBuilder<GUserStoriesDeleteFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoriesConnectOrCreateFieldInput)]),
          () => new ListBuilder<GUserStoriesConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserStoriesConnectionWhere)]),
          () => new ListBuilder<GUserStoriesConnectionWhere>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserStoriesConnectionWhere)]),
          () => new ListBuilder<GUserStoriesConnectionWhere>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserStoriesCreateFieldInput)]),
          () => new ListBuilder<GUserStoriesCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserStoriesConnectFieldInput)]),
          () => new ListBuilder<GUserStoriesConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoriesConnectOrCreateFieldInput)]),
          () => new ListBuilder<GUserStoriesConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoriesNodeAggregationWhereInput)]),
          () => new ListBuilder<GUserStoriesNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoriesNodeAggregationWhereInput)]),
          () => new ListBuilder<GUserStoriesNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserStoryLikesAggregateInput)]),
          () => new ListBuilder<GUserStoryLikesAggregateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserStoryLikesAggregateInput)]),
          () => new ListBuilder<GUserStoryLikesAggregateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoryLikesConnectFieldInput)]),
          () => new ListBuilder<GUserStoryLikesConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoryLikesDisconnectFieldInput)]),
          () => new ListBuilder<GUserStoryLikesDisconnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoryLikesCreateFieldInput)]),
          () => new ListBuilder<GUserStoryLikesCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoryLikesDeleteFieldInput)]),
          () => new ListBuilder<GUserStoryLikesDeleteFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoryLikesConnectOrCreateFieldInput)]),
          () => new ListBuilder<GUserStoryLikesConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoryLikesConnectionWhere)]),
          () => new ListBuilder<GUserStoryLikesConnectionWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoryLikesConnectionWhere)]),
          () => new ListBuilder<GUserStoryLikesConnectionWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoryLikesCreateFieldInput)]),
          () => new ListBuilder<GUserStoryLikesCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoryLikesConnectFieldInput)]),
          () => new ListBuilder<GUserStoryLikesConnectFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoryLikesConnectOrCreateFieldInput)]),
          () => new ListBuilder<GUserStoryLikesConnectOrCreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoryLikesNodeAggregationWhereInput)]),
          () => new ListBuilder<GUserStoryLikesNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserStoryLikesNodeAggregationWhereInput)]),
          () => new ListBuilder<GUserStoryLikesNodeAggregationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GUserWhere)]),
          () => new ListBuilder<GUserWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GUserWhere)]),
          () => new ListBuilder<GUserWhere>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GPointInput)]),
          () => new ListBuilder<GPointInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GPointInput)]),
          () => new ListBuilder<GPointInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GloadStoriesData_users)]),
          () => new ListBuilder<GloadStoriesData_users>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GloadStoriesData_users_stories)]),
          () => new ListBuilder<GloadStoriesData_users_stories>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostLikesUpdateFieldInput)]),
          () => new ListBuilder<GPostLikesUpdateFieldInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPostCommentsUpdateFieldInput)]),
          () => new ListBuilder<GPostCommentsUpdateFieldInput>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
