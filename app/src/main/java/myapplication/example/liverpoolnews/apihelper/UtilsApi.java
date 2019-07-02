package myapplication.example.liverpoolnews.apihelper;

public class UtilsApi {
public static final String BASE_URL_API = "http://192.168.43.197/LiverpoolNews/";

// Mendeklarasikan Interface BaseApiService
public static BaseApiService getAPIService(){
        return RetrofitClient.getClient(BASE_URL_API).create(BaseApiService.class);
        }}
