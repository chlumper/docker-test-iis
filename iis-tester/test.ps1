try {
    If((Invoke-WebRequest web).StatusCode -eq 200) {
        exit 0 
    } Else {
        exit 1
    }
} catch {
    exit 1
}