/*
 * Copyright 2022 Wultra s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.wultra.core.audit.base.util;

import java.sql.Clob;

/**
 * Testing utility class.
 */
public final class TestUtil {

    private TestUtil() {
    }

    /**
     * Converts Clob to String.
     *
     * @param clobObject Clob.
     * @return String.
     */
    public static String clobToString(Clob clobObject) {
        try {
            return clobObject.getSubString(1, Math.toIntExact(clobObject.length()));
        } catch (Exception ex) {
            throw new RuntimeException();
        }
    }
}
