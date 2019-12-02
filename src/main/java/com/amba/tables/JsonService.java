package com.amba.tables;

import com.amba.TableRowData;
import org.json.JSONObject;

import java.io.IOException;
import java.io.Reader;

public interface JsonService {

    public String readAll(Reader rd) throws IOException;

    public JSONObject readJsonFromUrl(String url) throws IOException;

    }
