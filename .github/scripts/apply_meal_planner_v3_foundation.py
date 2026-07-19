from pathlib import Path

script = Path(__file__).with_name('apply_meal_planner_v3_foundation_v3.py')
try:
    exec(compile(script.read_text(encoding='utf-8'), str(script), 'exec'))
except Exception as error:
    Path('.meal-planner-foundation-error.txt').write_text(
        f'{type(error).__name__}: {error}\n',
        encoding='utf-8',
    )
    raise
