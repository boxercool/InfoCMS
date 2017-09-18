package com.common;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springside.modules.utils.Collections3;

import com.google.common.collect.Lists;

public class FileUtils {

	/**
	 * 上传文件
	 * 
	 * @param file
	 * @param filePath
	 * @return 0：上传失败1：超出大�?�?制 2：上传�?功
	 * @throws IOException
	 */
	public static int uploadFile(MultipartFile file, String filePath,
			String fileName) throws IOException {

		InputStream inputStream = null;
		OutputStream outputStream = null;
		if (file.getSize() > 0) {
			if (file.getSize() > 506000000) {
				return 1;
			}
			inputStream = file.getInputStream();

			int total = (int) file.getSize();
			if (!(new java.io.File(filePath).isDirectory())) {
				new java.io.File(filePath).mkdirs();
			}
			outputStream = new FileOutputStream(filePath + fileName);

			int readBytes = 0;
			byte[] buffer = new byte[total];
			int len = buffer.length;
			if (len > total)
				len = total;

			while (total > 0) {
				try {
					readBytes = inputStream.read(buffer, 0, len);
					if (readBytes > 0) {
						outputStream.write(buffer, 0, readBytes);
						total -= readBytes;
						len = buffer.length;
						if (len > total)
							len = total;
					}
				} catch (java.net.SocketTimeoutException ste) {
			//		System.out.println(DateTimeUtil.nowTimeStr() + ":"
				//			+ ste.toString());
				} catch (Exception ste) {
			//		System.out.println(DateTimeUtil.nowTimeStr() + ":"
				//			+ ste.toString());
					break;
				}
			}

			outputStream.close();
			inputStream.close();

			return 2;
		}
		return 0;
	}
	/**
	 * 上传文件
	 * 
	 * @param file
	 * @param filePath
	 * @return 0：上传失败1：超出大�?�?制 2：上传�?功
	 * @throws IOException
	 */
	public static int uploadFile2(MultipartFile file, String filePath,
			String fileName) throws IOException {
		
		InputStream inputStream = null;
		OutputStream outputStream = null;
		if (file.getSize() > 0) {
			if (file.getSize() > 990000000) {
				return 1;
			}
			inputStream = file.getInputStream();
			
			int total = (int) file.getSize();
			if (!(new java.io.File(filePath).isDirectory())) {
				new java.io.File(filePath).mkdirs();
			}
			outputStream = new FileOutputStream(filePath + fileName);
			
			int readBytes = 0;
			byte[] buffer = new byte[total];
			int len = buffer.length;
			if (len > total)
				len = total;
			
			while (total > 0) {
				try {
					readBytes = inputStream.read(buffer, 0, len);
					if (readBytes > 0) {
						outputStream.write(buffer, 0, readBytes);
						total -= readBytes;
						len = buffer.length;
						if (len > total)
							len = total;
					}
				} catch (java.net.SocketTimeoutException ste) {
				//	System.out.println(DateTimeUtil.nowTimeStr() + ":"
				//			+ ste.toString());
				} catch (Exception ste) {
				//	System.out.println(DateTimeUtil.nowTimeStr() + ":"
				//			+ ste.toString());
					break;
				}
			}
			
			outputStream.close();
			inputStream.close();
			
			return 2;
		}
		return 0;
	}

	/**
	 * 上传文件 �?新命�??
	 * 
	 * @param file
	 * @param filePath
	 * @return 0：上传失败1：超出大�?�?制 2：上传�?功3:格�?错误
	 * @throws IOException
	 */
	public static int uploadFile1(MultipartFile file, String filePath,
			String fileName) throws IOException {
		InputStream inputStream = null;
		OutputStream outputStream = null;
		if (StringUtils.isNotBlank(fileName)) {
			String ext = "";
			try {
				ext = getExtention(fileName);
			} catch (Exception ex) {
				System.out.println(filePath+fileName);
				return 3;
			}
			if (".png,.jpeg,.gif,.jpg,.bmp,.PNG,.JPEG,.GIF,.JPG,.BMP".contains(ext)) {
				if (file.getSize() > 0) {
					if (file.getSize() > 512000) {
						return 1;
					}
					inputStream = file.getInputStream();

					int total = (int) file.getSize();
					if (!(new java.io.File(filePath).isDirectory())) {
						new java.io.File(filePath).mkdirs();
					}
					outputStream = new FileOutputStream(filePath + fileName);

					int readBytes = 0;
					byte[] buffer = new byte[total];
					int len = buffer.length;
					if (len > total)
						len = total;

					while (total > 0) {
						try {
							readBytes = inputStream.read(buffer, 0, len);
							if (readBytes > 0) {
								outputStream.write(buffer, 0, readBytes);
								total -= readBytes;
								len = buffer.length;
								if (len > total)
									len = total;
							}
						} catch (java.net.SocketTimeoutException ste) {
					//		System.out.println(DateTimeUtil.nowTimeStr() + ":"
					//				+ ste.toString());
						} catch (Exception ste) {
					//		System.out.println(DateTimeUtil.nowTimeStr() + ":"
					//				+ ste.toString());
							break;
						}
					}

					// try {
					// while ((readBytes = inputStream.read(buffer, 0, 512000))
					// !=
					// -1) {
					// outputStream.write(buffer, 0, readBytes);
					// }
					// } catch (java.net.SocketTimeoutException ste) {
					// System.out.println(ste.toString());
					// } catch (Exception ste) {
					// System.out.println(ste.toString());
					// }
					outputStream.close();
					inputStream.close();

					return 2;
				}
			} else {
				return 3;
			}
		}
		return 0;
	}

	/**
	 * 获得文件�?�缀�??
	 * 
	 * @param fileName
	 * @return
	 */
	public static String getExtention(String fileName) {
		int pos = fileName.lastIndexOf(".");
		return fileName.substring(pos);
	}
	public static byte[] readFileToByteArray(File file) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
