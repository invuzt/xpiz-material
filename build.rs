fn main() {
    let config = slint_build::CompilerConfiguration::new()
        .with_library_paths([("material".to_string(), std::path::PathBuf::from("ui"))].into_iter().collect())
        .with_include_paths(vec![
            std::path::PathBuf::from("ui"),
            std::path::PathBuf::from("ui/views"),
            std::path::PathBuf::from("ui/components")
        ]);
    slint_build::compile_with_config("ui/main.slint", config).unwrap();
}
