//
//  Project+Templates.swift
//  AnimalPickerManifests
//
//  Created by sandy on 9/27/24.
//

import ProjectDescription

public func feature(
    module: Module,
    dependencies: [TargetDependency] = []
) -> ProjectDescription.Target {
    return .target(
        name: module.name,
        destinations: [.iPad, .iPhone],
        product: .framework,
        bundleId: "com.sandy.AnimalPicker.feature.\(module.name)",
        deploymentTargets: .iOS("16.0"),
        infoPlist: .extendingDefault(
            with: [
                "UILaunchScreen": [
                    "UIColorName": "",
                    "UIImageName": "",
                ],
            ]
        ),
        sources: ["Sources/**"],
        resources: ["Resources/**",],
        dependencies: dependencies
    )
}

public func app(
    module: Module,
    dependencies: [TargetDependency] = []
) -> ProjectDescription.Target {
    return .target(
        name: module.name,
        destinations: [.iPad, .iPhone],
        product: .app,
        bundleId: "com.sandy.AnimalPicker.app.\(module.name)",
        deploymentTargets: .iOS("16.0"),
        infoPlist: .extendingDefault(
            with: [
                "UILaunchScreen": [
                    "UIColorName": "",
                    "UIImageName": "",
                ],
            ]
        ),
        sources: ["Sources/**"],
        resources: ["Resources/**"],
        dependencies: dependencies
    )
}

public func kit(
    module: Module,
    dependencies: [TargetDependency] = []
) -> ProjectDescription.Target {
    return .target(
        name: module.name,
        destinations: [.iPad, .iPhone],
        product: .framework,
        bundleId: "com.sandy.AnimalPicker.kit.\(module.name)",
        deploymentTargets: .iOS("16.0"),
        sources: ["Sources/**"],
        resources: [],
        dependencies: dependencies
    )
}

//
//func dependency(_ module: Module) -> TargetDependency {
//    return .project(target: module.name, path: module.path)
//}
//
//extension Project {
//    public static func featureFramework(
//        name: String,
//        dependencies: [TargetDependency] = []
//    ) -> Project {
//        return Project(
//            name: name,
//            targets: [
//                .target(
//                    name: name,
//                    destinations: [.iPad, .iPhone],
//                    product: .framework,
//                    bundleId: "com.sandy.AnimalPicker.\(name)",
//                    deploymentTargets: .iOS("15.0"),
//                    infoPlist: .extendingDefault(
//                        with: [
//                            "UILaunchScreen": [
//                                "UIColorName": "",
//                                "UIImageName": "",
//                            ],
//                        ]
//                    ),
//                    sources: ["Sources/**"],
//                    resources: ["Resources/**",],
//                    dependencies: dependencies
//                ),
////                .target(
////                    name: "\(name)Tests",
////                    destinations: .iOS,
////                    product: .unitTests,
////                    bundleId: "io.tuist.\(name)Tests",
////                    deploymentTargets: .iOS("15.0"),
////                    infoPlist: "\(name)Tests.plist",
////                    sources: ["Sources/\(name)Tests/**"],
////                    resources: ["Resources/\(name)Tests/**",],
////                    dependencies: [.target(name: name)]
////                )
//            ]
//        )
//    }
//    
//    
//    public static func kitFramework(name: String, dependencies: [TargetDependency] = []) -> Project {
//        return Project(
//            name: name,
//            targets: [
//                .target(
//                    name: name,
//                    destinations: [.iPad, .iPhone],
//                    product: .framework,
//                    bundleId: "com.sandy.\(name)",
//                    deploymentTargets: .iOS("15.0"),
//                    sources: ["Sources/**"],
//                    resources: [],
//                    dependencies: dependencies
//                ),
//            ]
//        )
//    }
//}
