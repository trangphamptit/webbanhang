package controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
//import com.google.gson.JsonObject;

import model.Menu;

import java.util.ArrayList;

public class JsonConvert {
    
    private final Gson gson;
    
    public JsonConvert() {
        
        gson = new GsonBuilder().create();
    }

    public String convertToJson(ArrayList<Menu> menu) {
        
        JsonArray jarray = gson.toJsonTree(menu).getAsJsonArray();
//        JsonObject jsonObject = new JsonObject();
//        jsonObject.add("menu", jarray);

        return jarray.toString();
    }
}
