# CLAUDE.md

Đây là **template** — sau khi nhân bản cho một dự án mới, điền các mục `TODO` bên dưới trước, phần còn lại chỉ dùng khi thật sự cần.

## 1. Lệnh dự án (bắt buộc điền trước)

* **Build:** `TODO` — ví dụ `npm run build`, `go build ./...`, `cargo build`
* **Test:** `TODO` — ví dụ `npm run test`, `go test ./...`, `pytest`
* **Lint / typecheck:** `TODO`

## 2. Cấu trúc thư mục chính

`TODO` — liệt kê các thư mục quan trọng và vai trò của chúng, ví dụ:

```
src/        # TODO
tests/      # TODO
```

## 3. Quy ước bắt buộc

`TODO` — chỉ ghi những quy ước Claude **không thể tự đoán ra** từ việc đọc code (naming riêng, pattern xử lý lỗi đặc thù, thứ bị cấm trong dự án này...). Đừng liệt kê những gì đã rõ ràng từ chính codebase.

## 4. Nguyên tắc làm việc chung

**Đánh đổi:** các nguyên tắc này thiên về thận trọng hơn tốc độ. Với việc nhỏ, dùng phán đoán.

- **Suy nghĩ trước khi code** — nêu rõ giả định; nếu không chắc, hỏi. Nếu có nhiều cách hiểu, trình bày ra thay vì tự chọn ngầm.
- **Đơn giản là ưu tiên** — code tối thiểu để giải quyết vấn đề, không thêm tính năng/trừu tượng hóa chưa được yêu cầu.
- **Sửa có phẫu thuật** — chỉ đụng vào phần cần đụng; không "tiện tay" refactor/dọn code không liên quan; xóa import/biến mồ côi do chính thay đổi của mình tạo ra, không xóa dead code có sẵn trừ khi được yêu cầu.
- **Làm theo mục tiêu kiểm chứng được** — biến yêu cầu mơ hồ thành tiêu chí có thể verify (viết test trước khi sửa bug, chạy test trước/sau khi refactor).

## 5. Mở rộng khi cần (không bắt buộc)

Template này đã có sẵn các lớp sau — chỉ tham khảo khi việc đang làm thật sự cần đến, không phải đọc hết mỗi lần:

* [.claude/rules/api.md](.claude/rules/api.md) — quy ước API, còn là placeholder, điền khi dự án có API.
* [.claude/rules/model_routing.md](.claude/rules/model_routing.md) — quy tắc tự đổi model theo giai đoạn (Opus lập kế hoạch → Sonnet code → Opus review). Xóa nếu bạn không muốn hành vi này.
* `.claude/commands/ship.md` — `/ship` chạy checklist trước khi commit/push.
* `.claude/agents/` — `code-reviewer`, `log-analyzer`, `researcher`: agent riêng cho dự án này, dùng khi agent global không đủ ngữ cảnh.
* `CLAUDE.local.md` (không commit) — override chỉ áp dụng trên máy riêng của bạn (đường dẫn tuyệt đối, sở thích cá nhân) — không đặt vào file này.
