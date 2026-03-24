pluginManagement {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}
dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google()
        mavenCentral()
    }
}
rootProject.name = "MapleAuto"
include(":app")
include(":engine")
include(":ipc")
include(":accessibility")
include(":plugin")
include(":persistence")
include(":common")
include(":proto")
