package swfParser.net;

import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;

/**
 * Created by Uther on 04.09.2016.
 */
public class FileDownloader {
    public static void download(String srcFile, String dstFile) throws IOException {
        URL website = new URL(srcFile);
        ReadableByteChannel rbc = Channels.newChannel(website.openStream());
        FileOutputStream fos = new FileOutputStream(dstFile);
        fos.getChannel().transferFrom(rbc, 0, Long.MAX_VALUE);
    }
}
