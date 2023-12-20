# these are mostly just exports, #noqa them so flake8 will be happy
from dbt.adapters.cockroachdb.connections import CockroachdbConnectionManager  # noqa
from dbt.adapters.cockroachdb.connections import CockroachdbCredentials
from dbt.adapters.cockroachdb.column import CockroachdbColumn  # noqa
from dbt.adapters.cockroachdb.relation import CockroachdbRelation  # noqa: F401
from dbt.adapters.cockroachdb.impl import CockroachdbAdapter

from dbt.adapters.base import AdapterPlugin
from dbt.include import cockroachdb

Plugin = AdapterPlugin(
    adapter=CockroachdbAdapter, credentials=CockroachdbCredentials, include_path=cockroachdb.PACKAGE_PATH
)
