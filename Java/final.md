```ruby
package sec01;

import javax.swing.*;
import java.awt.*;
import java.io.*;
import java.util.*;

class StudentViewer extends JFrame {

    ArrayList<Student> list = new ArrayList<>();
    int index;

    JLabel lblPhoto; // 사진
    JLabel lblId, lblName, lblMid, lblFin; // 학번, 이름, 중간, 기말

    JButton btnFirst, btnPrev, btnNext, btnLast; // 이동 버튼
    JButton btnSum, btnAvg;

    StudentViewer() {
        
        

        //============== 사진 라벨 ===============
        lblPhoto = new JLabel("",SwingConstants.CENTER);
        add(lblPhoto, BorderLayout.NORTH);

        //============== 정보 패널 ===============
        JPanel infoPanel = new JPanel(new GridLayout(4, 1));
        
        lblId = new JLabel("",SwingConstants.CENTER);
        lblName = new JLabel("",SwingConstants.CENTER);
        lblMid = new JLabel("",SwingConstants.CENTER);
        lblFin = new JLabel("",SwingConstants.CENTER);
        
        infoPanel.add(lblId);
        infoPanel.add(lblName);
        infoPanel.add(lblMid);
        infoPanel.add(lblFin);

        add(infoPanel, BorderLayout.CENTER);
        Font f = new Font("맑은 고딕", Font.BOLD, 20);
        
        // ★ 패널에 들어 있는 모든 컴포넌트 폰트 변경
        setPanelFont(infoPanel, f);

        //============== 버튼 패널 ===============
        JPanel panel = new JPanel();
        btnFirst = new JButton("처음");
        btnPrev = new JButton("이전");
        btnNext = new JButton("다음");
        btnLast = new JButton("마지막");
        btnSum = new JButton("합계");
        btnAvg = new JButton("평균");

        panel.add(btnFirst);
        panel.add(btnPrev);
        panel.add(btnNext);
        panel.add(btnLast);
        panel.add(btnSum);
        panel.add(btnAvg);
        
        add(panel, BorderLayout.SOUTH);
        // ★ 패널에 들어 있는 모든 컴포넌트 폰트 변경
        setPanelFont(panel, f);
        
        // CSV 파일 로드 (★)
        loadFile("students.csv");

        // 첫 학생 표시 (★)
        displayStudent(index);

        //============== 버튼 이벤트 ===============
        btnFirst.addActionListener(e -> {
            index = 0;
            displayStudent(index);
        });

        btnPrev.addActionListener(e -> {
        	if (index == 0) 
                message("첫 번째 학생입니다.");
            else {
                index--;
                displayStudent(index);
            }
        });

        btnNext.addActionListener(e -> {
        	if (index == list.size() - 1) 
                message("마지막 학생입니다.");
            else {
                index++;
                displayStudent(index);
            }
        });

        btnLast.addActionListener(e -> {
            index = list.size() - 1;
            displayStudent(index);
        });

        btnSum.addActionListener(e -> {
        	Student s=list.get(index);
            message(Integer.toString(s.getSum()));
        });

        btnAvg.addActionListener(e -> {
        	Student s=list.get(index);
            message(Double.toString(s.getAverage()));
        });

        setSize(600, 400);
        setVisible(true);
    }
    
    void message(String text) {
    	JOptionPane.showMessageDialog(null,text);
    }
    
    void setPanelFont(JPanel panel, Font font) {
        for (Component comp : panel.getComponents()) 
            comp.setFont(font);
        
    }

    //============== 파일 읽기 ===============
    void loadFile(String filename) {
        try {
        	FileReader fr=new FileReader(filename);
        	BufferedReader br = new BufferedReader(fr);
            String line;

            br.readLine(); // 제목 줄 읽기

            while ((line = br.readLine()) != null) {
                String[] arr = line.split(",");
                list.add(new Student(
                        arr[0], arr[1], arr[2],
                        Integer.parseInt(arr[3]),
                        Integer.parseInt(arr[4])
                ));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //============== 학생 정보 출력 ===============
    void displayStudent(int idx) {

        Student s = list.get(idx);//중요

        // 이미지 불러오기
        String path = "images/" + s.photo + ".png";
        lblPhoto.setIcon(new ImageIcon(path));

        //  윈도우 제목 변경하기
        setTitle(s.name+"학생 정보 보기");
        // 개별 라벨에 출력
        lblId.setText("학번: " + s.id);
        lblName.setText("이름: " + s.name);
        lblMid.setText("중간고사: " + s.mid);
        lblFin.setText("기말고사: " + s.fin);
    }
}


public class StudentViewerTest {
    public static void main(String[] args) {
        new StudentViewer();
    }
}
```
