use thiserror::Error;

#[derive(Debug, Error)]
pub enum Error {
    #[error("TON API request failed: {0}")]
    ApiRequest(#[from] reqwest::Error),
    #[error("Invalid wallet address: {0}")]
    InvalidAddress(String),
    #[error("Configuration error: {0}")]
    ConfigError(String),
    #[error("Serialization error: {0}")]
    SerdeError(#[from] serde_json::Error),
}

pub type Result<T> = std::result::Result<T, Error>;
