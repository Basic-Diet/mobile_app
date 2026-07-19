from pathlib import Path

script = Path(__file__).with_name('apply_meal_planner_v3_foundation_v2.py')
exec(compile(script.read_text(encoding='utf-8'), str(script), 'exec'))
