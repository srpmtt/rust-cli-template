use clap::{Parser, Subcommand};
use my_cli::commands::{goodbye, greet};

#[derive(Parser)]
#[command(name = "my_cli")]
#[command(about = "A CLI application", long_about = None)]
struct Cli {
    #[command(subcommand)]
    command: Commands,
}

#[derive(Subcommand)]
enum Commands {
    Greet { name: String },
    Goodbye { name: String },
}

fn main() {
    let cli = Cli::parse();

    match cli.command {
        Commands::Greet { name } => greet::execute(name),
        Commands::Goodbye { name } => goodbye::execute(name),
    }
}
