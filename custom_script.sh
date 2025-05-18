if [[ -n "$CUSTOM_SCRIPT_URL" ]]; then
  echo "Load custom script from ${CUSTOM_SCRIPT_URL}"
  custom_script=$(mktemp)
  curl -fsSL "$CUSTOM_SCRIPT_URL" -o "${custom_script}"
  bash "${custom_script}" 2>&1 | bash /label.sh 'Custom Script'
fi
