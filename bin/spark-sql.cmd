@echo off

@rem
@rem Licensed to the Apache Software Foundation (ASF) under one or more
@rem contributor license agreements.  See the NOTICE file distributed with
@rem this work for additional information regarding copyright ownership.
@rem The ASF licenses this file to You under the Apache License, Version 2.0
@rem (the "License"); you may not use this file except in compliance with
@rem the License.  You may obtain a copy of the License at
@rem
@rem    http://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@rem
@rem Shell script for starting the Spark SQL CLI


set CLASS="org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver"
set CLASS_NOT_FOUND_EXIT_STATUS=1

set FWDIR=%~dp0..\

%FWDIR%bin\spark-submit --class %CLASS% %* spark-internal 
