import ProjectDescription

// 전체 Manifests의 프로젝트에 일관된 설정을 지정
let config = Config(
//    Create an account with "tuist auth" and a project with "tuist project create"
//    then uncomment the section below and set the project full-handle.
//    * Read more: https://docs.tuist.io/guides/quick-start/gather-insights
//
//    fullHandle: "{account_handle}/{project_handle}",
    generationOptions: .options(enforceExplicitDependencies: true)
)
