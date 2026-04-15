fn main() {
    let config = slint_build::CompilerConfiguration::new()
        .with_library_paths([
            ("library".to_string(), std::path::PathBuf::from("ui"))
        ].into_iter().collect());
    
    slint_build::compile_with_config("ui/main.slint", config).unwrap();
}
