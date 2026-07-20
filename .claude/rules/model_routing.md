# Quy tắc Định tuyến Model Tự động (Model Routing Rules)

Quy tắc này bắt buộc áp dụng đối với Claude Code khi bắt đầu thực hiện bất kỳ tác vụ sửa đổi, nâng cấp hoặc phát triển tính năng mới nào trong dự án này.

## Quy trình làm việc tự động (Workflow)

Khi người dùng yêu cầu thực hiện sửa đổi mã nguồn hoặc phát triển tính năng, Claude Code **PHẢI** tự động chuyển đổi mô hình (sử dụng lệnh `/model <tên-model>`) qua 3 giai đoạn như sau:

---

### GIAI ĐOẠN 1: Lập kế hoạch chi tiết (Planning Phase)
* **Model yêu cầu:** **Phiên bản Opus mới nhất** (Sử dụng lệnh động: `/model opus`)
* **Hành động cần làm:**
  1. Ngay khi tiếp nhận yêu cầu, gõ lệnh `/model opus` để chuyển sang mô hình Opus phiên bản mới nhất (tối ưu cho việc lập kế hoạch logic phức tạp).
  2. Tiến hành phân tích cấu trúc mã nguồn hiện tại, các ảnh hưởng liên quan.
  3. Tạo hoặc cập nhật tệp tin kế hoạch thực hiện (ví dụ: `implementation_plan.md` hoặc tài liệu kế hoạch).
  4. Trình bày chi tiết kế hoạch cho người dùng và chờ phản hồi/xác nhận từ người dùng.

---

### GIAI ĐOẠN 2: Thực hiện sửa code (Coding Phase)
* **Model yêu cầu:** **Phiên bản Sonnet mới nhất** (Sử dụng lệnh động: `/model sonnet`)
* **Hành động cần làm:**
  1. Sau khi người dùng đồng ý với kế hoạch, gõ lệnh `/model sonnet` để chuyển sang mô hình Sonnet phiên bản mới nhất (mô hình lập trình tốt nhất và nhanh nhất).
  2. Tiến hành viết mã nguồn, chỉnh sửa các tệp tin theo đúng kế hoạch đã đề ra.
  3. Chạy các lệnh kiểm tra, kiểm thử (tests, linter) nếu có để xác minh code hoạt động đúng.

---

### GIAI ĐOẠN 3: Đánh giá chất lượng & Phản hồi (Review Phase)
* **Model yêu cầu:** **Phiên bản Opus mới nhất** (Sử dụng lệnh động: `/model opus`)
* **Hành động cần làm:**
  1. Sau khi hoàn thành việc viết code, gõ lệnh `/model opus` để chuyển lại mô hình Opus (tối ưu cho việc phân tích lỗi logic sâu và tính an toàn bảo mật).
  2. Tự tiến hành kiểm tra mã nguồn (Self-Review) các thay đổi đã thực hiện (kiểm tra bằng `git diff`).
  3. Phản hồi cho người dùng báo cáo kiểm thử/review cuối cùng trước khi hoàn thành phiên làm việc.
