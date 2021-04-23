# frozen_string_literal: true

defaults = {
  models: 'true',
  routes: 'false',
  position_in_routes: 'before',
  position_in_class: 'before',
  position_in_test: 'before',
  position_in_fixture: 'before',
  position_in_factory: 'before',
  position_in_serializer: 'before',
  show_foreign_keys: 'true',
  show_indexes: 'true',
  simple_indexes: 'true',
  model_dir: 'app/models',
  root_dir: '',
  include_version: 'false',
  require: '',
  exclude_tests: 'true',
  exclude_fixtures: 'true',
  exclude_factories: 'true',
  exclude_serializers: 'true',
  exclude_scaffolds: 'true',
  exclude_controllers: 'true',
  exclude_helpers: 'true',
  ignore_model_sub_dir: 'false',
  ignore_columns: nil,
  ignore_routes: nil,
  ignore_unknown_models: 'false',
  hide_limit_column_types: 'integer,boolean',
  skip_on_db_migrate: 'false',
  format_bare: 'false',
  format_rdoc: 'false',
  format_markdown: 'true',
  sort: 'true',
  force: 'false',
  trace: 'false'
}

if Rails.env.development?
  task set_annotation_options: :environment do
    # You can override any of these by setting an environment variable of the
    # same name.
    Annotate.set_defaults defaults
  end

  Annotate.load_tasks
end
